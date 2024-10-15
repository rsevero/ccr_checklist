import 'dart:io';
import 'package:ccr_checklist/data/template.dart';
import 'package:ccr_checklist/misc/constants.dart';
import 'package:ccr_checklist/misc/ccr_directory_helper.dart';
import 'package:ccr_checklist/store/template_editor_store.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

Future<CCRFileExistsAction?> ccrShowFileExistsDialog(
    BuildContext context, String filepath) async {
  return await showDialog<CCRFileExistsAction>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('File "$filepath" already exists'),
        content: const Text(
            'Do you want to replace it, choose another name, or cancel?'),
        actions: <Widget>[
          TextButton(
            child: const Text('Replace'),
            onPressed: () =>
                Navigator.of(context).pop(CCRFileExistsAction.replace),
          ),
          TextButton(
            child: const Text('Choose another'),
            onPressed: () =>
                Navigator.of(context).pop(CCRFileExistsAction.chooseAnother),
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () =>
                Navigator.of(context).pop(CCRFileExistsAction.cancel),
          ),
        ],
      );
    },
  );
}

Future<bool> fileExists(String filepath) async {
  final file = File(filepath);
  return await file.exists();
}

Future<String> ccrFileNameFromTemplate(Template template) async {
  String filename = '';
  String filepath = '';

  const uuidGenerator = Uuid();
  do {
    filename = uuidGenerator.v7();
    filename = slugify(filename, delimiter: '_');
    filepath = await ccrFilePathFromFileName(filename);
  } while (await fileExists(filepath));

  return filename;
}

Future<String> ccrFilePathFromFileName(String fileName) async {
  if (fileName.endsWith('.$ccrTemplateExtension')) {
    fileName = fileName.substring(
        0, fileName.length - (ccrTemplateExtension.length + 1));
  }
  final directory = await CCRDirectory.templates();
  final filePath = '${directory.path}/$fileName.$ccrTemplateExtension';

  return filePath;
}

Future<void> ccrSaveAsTemplate(BuildContext context, Template template,
    [String? fileName = '']) async {
  if ((fileName == null) || (fileName == '')) {
    fileName = await ccrFileNameFromTemplate(template);
  }

  String filePath = await ccrFilePathFromFileName(fileName);
  File file = File(filePath);

  fileExistsLoop:
  while (await file.exists()) {
    if (!context.mounted) return;
    final action = await ccrShowFileExistsDialog(context, fileName!);
    switch (action) {
      case CCRFileExistsAction.replace:
        break fileExistsLoop;
      case CCRFileExistsAction.chooseAnother:
        if (!context.mounted) return;
        fileName = await ccrFileNameFromTemplate(template);
        if (fileName == '') {
          return;
        }
        filePath = await ccrFilePathFromFileName(fileName);
        file = File(filePath);
        break;
      case CCRFileExistsAction.cancel:
      default:
        return;
    }
  }

  if (!context.mounted) return;
  final templateEditorStore =
      Provider.of<TemplateEditorStore>(context, listen: false);
  templateEditorStore.saveTemplate(context, template, filePath);
}
