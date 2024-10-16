import 'package:ccr_checklist/data/template.dart';
import 'package:ccr_checklist/misc/help_dialog_helper.dart';
import 'package:ccr_checklist/misc/save_template_helper.dart';
import 'package:ccr_checklist/misc/template_load_helper.dart';
import 'package:ccr_checklist/store/template_editor_store.dart';
import 'package:ccr_checklist/store/template_list_store.dart';
import 'package:ccr_checklist/widget/template_list.dart';
import 'package:flutter/material.dart';
import 'package:ccr_checklist/page/template_editor_page.dart';
import 'package:provider/provider.dart';

class TemplateEditorListPage extends StatelessWidget {
  const TemplateEditorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checklist Templates'),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () =>
                ccrOpenHelpDialog(context, 'TemplateEditorListPage'),
            tooltip: 'Help',
          ),
        ],
      ),
      body: TemplateList(
        isEditor: true,
        onTapTemplateFile: _onTapTemplateFile,
        onRemoveTemplateFile: _onRemoveTemplateFile,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewTemplate(context),
        tooltip: 'Create New Template',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _onRemoveTemplateFile(BuildContext context, int index) async {
    final templateListStore =
        Provider.of<TemplateListStore>(context, listen: false);

    // Show confirmation dialog
    final bool confirm = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm Removal'),
              content:
                  const Text('Are you sure you want to remove this template?'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Remove'),
                  onPressed: () => Navigator.of(context)
                      .pop(true), // Dismiss dialog and return true
                ),
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context)
                      .pop(false), // Dismiss dialog and return false
                ),
              ],
            );
          },
        ) ??
        false; // If dialog is dismissed without any action, consider as false (do not remove)

    // If confirmation received, remove the template
    if (confirm) {
      await templateListStore.removeTemplate(index);
    }
  }

  Future<void> _onTapTemplateFile(BuildContext context, int index) async {
    final Template template =
        await TemplateLoadHelper.loadTemplate(context, index);

    if (!context.mounted) return;
    final templateEditorStore =
        Provider.of<TemplateEditorStore>(context, listen: false);

    templateEditorStore.setCurrentTemplate(template);

    final templateListStore =
        Provider.of<TemplateListStore>(context, listen: false);
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TemplateEditorPage(),
      ),
    );

    templateListStore.invalidate();
  }

  void _addNewTemplate(BuildContext context) async {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController rebreatherManufacturerController =
        TextEditingController();
    final TextEditingController rebreatherModelController =
        TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    bool confirmed = await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('New Template'),
              content: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: rebreatherManufacturerController,
                      decoration: const InputDecoration(
                          hintText: 'Rebreather manufacturer'),
                      textInputAction: TextInputAction
                          .next, // Move focus to next input on "Enter"
                      onSubmitted: (_) =>
                          FocusScope.of(context).requestFocus(FocusNode()),
                      autofocus: true,
                    ),
                    TextField(
                      controller: rebreatherModelController,
                      decoration:
                          const InputDecoration(hintText: 'Rebreather model'),
                      autofocus: true,
                      textInputAction: TextInputAction
                          .next, // Move focus to next input on "Enter"
                      onSubmitted: (_) => FocusScope.of(context)
                          .requestFocus(FocusNode()), // Optional
                    ),
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(hintText: 'Title'),
                      textInputAction: TextInputAction
                          .next, // Move focus to next input on "Enter"
                      onSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // Move focus to next input
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(hintText: 'Description'),
                      textInputAction:
                          TextInputAction.done, // Done action for last input
                      onSubmitted: (_) => Navigator.of(context)
                          .pop(true), // Activate "Create" method on "Enter"
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Create'),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              ],
            );
          },
        ) ??
        false;

    if (confirmed) {
      final String rebreatherManufacturer =
          rebreatherManufacturerController.text.trim();
      final String rebreatherModel = rebreatherModelController.text.trim();
      final String title = titleController.text.trim();
      final String description = descriptionController.text.trim();
      if (rebreatherManufacturer.isNotEmpty &&
          rebreatherModel.isNotEmpty &&
          title.isNotEmpty) {
        Template newTemplate = Template(
          rebreatherManufacturer: rebreatherManufacturer,
          rebreatherModel: rebreatherModel,
          title: title,
          description: description,
          sections: [],
        );
        final String filename = await ccrFileNameFromTemplate(newTemplate);
        if (!context.mounted) return;
        await ccrSaveAsTemplate(context, newTemplate, filename);

        if (!context.mounted) return;
        final TemplateListStore templateListStore =
            Provider.of<TemplateListStore>(context, listen: false);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TemplateEditorPage(),
          ),
        );

        templateListStore.invalidate();
      }
    }
  }
}
