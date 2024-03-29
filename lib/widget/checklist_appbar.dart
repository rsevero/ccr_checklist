import 'package:ccr_checklist/misc/help_dialog_helper.dart';
import 'package:ccr_checklist/misc/helper_functions.dart';
import 'package:ccr_checklist/store/checklist_editor_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CheckListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String description;
  final String rebreatherManufacturer;
  final String rebreatherModel;

  const CheckListAppBar({
    super.key,
    required this.title,
    required this.description,
    required this.rebreatherManufacturer,
    required this.rebreatherModel,
  });

  @override
  Widget build(BuildContext context) {
    final checklistEditorStore = Provider.of<ChecklistEditorStore>(context);

    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$title - $description'),
          Text(
            '$rebreatherManufacturer $rebreatherModel',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      elevation: 1,
      actions: [
        Observer(
          builder: (_) => IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset Checklist',
            onPressed: checklistEditorStore.checklistChanged
                ? () => onPressedResetChecklist(context)
                : null,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: () => ccrOpenHelpDialog(context, 'ChecklistPage'),
          tooltip: 'Help',
        ),
      ],
    );
  }

  void onPressedResetChecklist(BuildContext context) async {
    final checklistEditorStore =
        Provider.of<ChecklistEditorStore>(context, listen: false);

    bool confirm = await ccrConfirmActionDialog(context, "Reset Checklist",
        "Are you sure you want to reset the checklist and lose all changes?");

    if (confirm) {
      if (!context.mounted) return;
      final result = await checklistEditorStore.resetChecklist(context);

      if (!result) {
        return;
      }
      if (!context.mounted) return;
      navigateToSection(context, 0);
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
