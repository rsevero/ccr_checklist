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

import 'package:ccrchecklist/data/template_file.dart';
import 'package:ccrchecklist/misc/constants.dart';
import 'package:ccrchecklist/misc/flutter_extension_methods.dart';
import 'package:ccrchecklist/store/template_list_store.dart';
import 'package:ccrchecklist/widget/template_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class TemplateList extends StatefulWidget {
  final Function(BuildContext, int) onTapTemplateFile;
  final Function(BuildContext, int)? onRemoveTemplateFile;
  final bool isEditor;

  const TemplateList({
    super.key,
    required this.onTapTemplateFile,
    required this.isEditor,
    this.onRemoveTemplateFile,
  });

  @override
  State<TemplateList> createState() => _TemplateListState();
}

class _TemplateListState extends State<TemplateList> {
  late Color expandedManufacturerColor;
  late Color expandedModelColor;
  late Color expandedManufacturerTextColor;
  late Color expandedModelTextColor;
  late Color collapsedManufacturerTextColor;
  late Color collapsedModelTextColor;
  late TemplateListStore templateListStore;
  late List<TemplateFile> defaultTemplates;
  String expandedManufacturer = '';
  String expandedModel = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    templateListStore = Provider.of<TemplateListStore>(context, listen: false);

    final ColorScheme colorScheme = context.colorScheme;
    expandedModelColor = colorScheme.secondaryContainer;
    expandedModelTextColor = colorScheme.onSecondaryContainer;
    expandedManufacturerColor = colorScheme.secondary;
    expandedManufacturerTextColor = colorScheme.onSecondary;
    collapsedManufacturerTextColor = colorScheme.onSurface;
    collapsedModelTextColor = colorScheme.onSecondary;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        templateListStore.update();

        final observableDefaultTemplates = templateListStore.defaultTemplates;
        // ignore: unused_local_variable
        final templateListStoreState = templateListStore.state;

        defaultTemplates = observableDefaultTemplates.toList();

        final manufacturers = _buildDefaultTile(context);

        return ListView(
          children: manufacturers,
        );
      },
    );
  }

  List<ExpansionTile> _buildDefaultTile(BuildContext context) {
    List<ExpansionTile> manufacturers = [];
    List<Padding> models = [];
    List<Widget> templates = [];
    String currentManufacturer = '';
    String currentModel = '';

    for (var templateIndex = 0;
        templateIndex < defaultTemplates.length;
        templateIndex++) {
      final template = defaultTemplates[templateIndex];
      if (template.rebreatherManufacturer != currentManufacturer) {
        if (currentManufacturer != '') {
          models.add(_modelTile(currentModel, templates));
          if (models.length == 1) {
            models[0] = _expandModelTile(models[0]);
          }
          manufacturers.add(_manufacturerTile(currentManufacturer, models));
        }
        currentManufacturer = template.rebreatherManufacturer;
        models = [];
        currentModel = template.rebreatherModel;
        templates = [];
      } else if (template.rebreatherModel != currentModel) {
        if (currentModel != '') {
          models.add(_modelTile(currentModel, templates));
        }
        currentModel = template.rebreatherModel;
        templates = [];
      }
      final String templateDescription = (template.description.isEmpty)
          ? ccrNoDescription
          : template.description;
      templates.add(
        TemplateListTileWidget(
          title: Text(template.title,
              style: context.ccrThemeExtension.templateTitleTextTheme),
          description: Text(templateDescription,
              style: context.ccrThemeExtension.templateDescriptionTextTheme),
          isAsset: template.isAsset,
          isEditor: widget.isEditor,
          templateIndex: templateIndex,
          borderRadius: ccrTemplateListTileBorderRadius,
          onTap: () {
            widget.onTapTemplateFile(context, templateIndex);
          },
          onRemove: widget.onRemoveTemplateFile,
        ),
      );
    }

    if (templates.isNotEmpty) {
      models.add(_modelTile(currentModel, templates));
    }

    if (models.isNotEmpty) {
      if (models.length == 1) {
        models[0] = _expandModelTile(models[0]);
      }
      manufacturers.add(_manufacturerTile(currentManufacturer, models));
    }

    if (manufacturers.length == 1) {
      manufacturers[0] = _expandManufacturerTile(manufacturers[0]);
    }

    return manufacturers;
  }

  ExpansionTile _expandManufacturerTile(ExpansionTile tile) {
    return _expandTile(tile);
  }

  ExpansionTile _expandTile(ExpansionTile tile) {
    final expandedTile = ExpansionTile(
      title: tile.title,
      backgroundColor: tile.backgroundColor,
      textColor: tile.textColor,
      collapsedTextColor: tile.collapsedTextColor,
      iconColor: tile.iconColor,
      collapsedIconColor: tile.collapsedIconColor,
      initiallyExpanded: true,
      shape: tile.shape,
      children: tile.children,
    );

    return expandedTile;
  }

  Padding _paddingForModel(ExpansionTile modelTile) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: modelTile,
    );
  }

  Padding _expandModelTile(Padding modelTile) {
    final originalExpandedTile = modelTile.child as ExpansionTile;
    final expandedTile = _expandTile(originalExpandedTile);

    return _paddingForModel(expandedTile);
  }

  Padding _modelTile(String tileText, List<Widget> templates) {
    final ExpansionTile newModel = ExpansionTile(
      title: Text(
        tileText,
        style: context.ccrThemeExtension.modelTextTheme,
      ),
      backgroundColor: expandedModelColor,
      textColor: expandedModelTextColor,
      collapsedTextColor: collapsedModelTextColor,
      iconColor: expandedModelTextColor,
      collapsedIconColor: collapsedModelTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: ccrTemplateListTileBorderRadius,
      ),
      children: templates,
    );

    return _paddingForModel(newModel);
  }

  ExpansionTile _manufacturerTile(String tileText, List<Widget> models) {
    final ExpansionTile newManufacturer = ExpansionTile(
      title: Text(
        tileText,
        style: context.ccrThemeExtension.manufacturerTextTheme,
      ),
      backgroundColor: expandedManufacturerColor,
      textColor: expandedManufacturerTextColor,
      collapsedTextColor: collapsedManufacturerTextColor,
      iconColor: expandedManufacturerTextColor,
      collapsedIconColor: collapsedManufacturerTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: ccrTemplateListTileBorderRadius,
      ),
      children: models,
    );

    return newManufacturer;
  }
}
