import 'package:ccr_checklist/data/template.dart';
import 'package:ccr_checklist/data/template_file.dart';
import 'package:ccr_checklist/store/template_list_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TemplateLoadHelper {
  static Future<Template> loadTemplate(BuildContext context, int index) async {
    final templateListStore =
        Provider.of<TemplateListStore>(context, listen: false);
    final TemplateFile templateFile = templateListStore.defaultTemplates[index];
    final Template template = await templateListStore.getTemplate(
        templateFile.path, templateFile.isAsset);

    return template;
  }
}
