// CCR Checklist - a checklist app for rebreather users
// Copyright (C) 2024  Rodrigo Severo
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:ccrchecklist/store/template_editor_store.dart';
import 'package:ccrchecklist/widget/template_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TemplateEditorPageBody extends StatelessWidget {
  const TemplateEditorPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final templateEditorStore = Provider.of<TemplateEditorStore>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Observer(
            builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      templateEditorStore.currentTemplate.title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Center(
                    child: Text(
                      templateEditorStore.currentTemplate.description,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
          child: Text(
            'Pages',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Observer(
            builder: (_) => ReorderableListView.builder(
              buildDefaultDragHandles: false,
              shrinkWrap: true,
              itemCount: templateEditorStore.sections.length,
              itemBuilder: (context, index) {
                return Observer(
                  key: ObjectKey(templateEditorStore.sections[index]),
                  builder: (_) {
                    final section = templateEditorStore.sections[index];

                    return TemplateSectionWidget(
                      section: section,
                      sectionIndex: index,
                    );
                  },
                );
              },
              onReorder: (oldSectionIndex, newSectionIndex) =>
                  templateEditorStore.moveSection(
                      oldSectionIndex, newSectionIndex),
            ),
          ),
        ),
      ],
    );
  }
}
