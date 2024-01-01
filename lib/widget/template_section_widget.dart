import 'package:ccr_checklist/data/template_section.dart';
import 'package:ccr_checklist/store/template_editor_store.dart';
import 'package:ccr_checklist/widget/template_check_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TemplateSectionWidget extends StatelessWidget {
  final TemplateSection section;
  final int sectionIndex;

  const TemplateSectionWidget({
    super.key,
    required this.section,
    required this.sectionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final templateEditorStore = Provider.of<TemplateEditorStore>(context);

    return Observer(
      key: ValueKey(sectionIndex),
      builder: (_) {
        ColorScheme colorScheme = Theme.of(context).colorScheme;

        final isSelected =
            (sectionIndex == templateEditorStore.selectedSectionIndex);
        const isExpanded = false;
        templateEditorStore.setExpandedSectionIfUnset(sectionIndex, isExpanded);

        return Container(
          color: isSelected ? colorScheme.primaryContainer : Colors.transparent,
          child: GestureDetector(
            onTap: () => onTapSection(context, sectionIndex),
            child: ExpansionTile(
              title: Text(
                section.title,
                style: TextStyle(
                  color: isSelected
                      ? colorScheme.onPrimaryContainer
                      : colorScheme.onSurface,
                ),
              ),
              onExpansionChanged: (expanded) {
                templateEditorStore.setExpandedSection(sectionIndex, expanded);
              },
              controlAffinity: ListTileControlAffinity.leading,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Edit',
                        child: Text('Edit'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Delete',
                        child: Text('Delete'),
                      ),
                    ],
                    onSelected: (value) {
                      switch (value) {
                        case 'Edit':
                          _editTemplateSection(
                              context, templateEditorStore, sectionIndex);
                          break;
                        case 'Delete':
                          templateEditorStore.deleteSection(sectionIndex);
                          break;
                      }
                    },
                  ),
                  Observer(
                    builder: (_) {
                      return Visibility(
                        visible: !((templateEditorStore.sections.length == 1) ||
                            templateEditorStore.isAnySectionExpanded),
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: ReorderableDragStartListener(
                          index: sectionIndex,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Icon(Icons.drag_handle),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              initiallyExpanded: isExpanded,
              children: [
                TemplateCheckListWidget(
                  sectionIndex: sectionIndex,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void onTapSection(context, sectionIndex) {
    final templateEditorStore =
        Provider.of<TemplateEditorStore>(context, listen: false);
    templateEditorStore.setSelectedSectionByIndex(sectionIndex);
  }

  void _editTemplateSection(BuildContext context,
      TemplateEditorStore templateEditorStore, int index) {
    final TextEditingController titleController = TextEditingController();
    final section = templateEditorStore.sections[index];
    titleController.text = section.title;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Page'),
          content: TextFormField(
            controller: titleController,
            decoration: const InputDecoration(hintText: 'Enter page title'),
            autofocus: true,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Update'),
              onPressed: () {
                final String title = titleController.text.trim();
                if (title.isNotEmpty) {
                  templateEditorStore.updateSectionTitle(index, title);
                  Navigator.of(context).pop();
                }
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
