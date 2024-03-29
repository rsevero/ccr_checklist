import 'package:flutter/material.dart';

class UndoRedoButtonsWidget extends StatelessWidget {
  final Function()? undo;
  final Function()? redo;
  final bool canUndo;
  final bool canRedo;
  final String undoDescription;
  final String redoDescription;

  const UndoRedoButtonsWidget({
    super.key,
    this.undo,
    this.redo,
    required this.canUndo,
    required this.canRedo,
    required this.undoDescription,
    required this.redoDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: canUndo ? undo : null,
          icon: const Icon(Icons.undo_rounded),
          tooltip: undoDescription,
        ),
        IconButton(
          onPressed: canRedo ? redo : null,
          icon: const Icon(Icons.redo_rounded),
          tooltip: redoDescription,
        ),
      ],
    );
  }
}
