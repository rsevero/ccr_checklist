// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_editor_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChecklistEditorStore _$ChecklistEditorStoreFromJson(
        Map<String, dynamic> json) =>
    ChecklistEditorStore()
      .._rebreatherManufacturer = json['_rebreatherManufacturer'] as String
      .._rebreatherModel = json['_rebreatherModel'] as String
      .._title = json['_title'] as String
      .._description = json['_description'] as String
      .._diverName = json['_diverName'] as String
      .._date = DateTime.parse(json['_date'] as String)
      .._sections =
          ObservableListJsonConverter.obsvbLstOfChecklistSectionFromJson(
              json['_sections'] as List<ChecklistSection>)
      .._checks = ObservableListJsonConverter
          .obsvbLstOfObsvbLstOfChecklistCheckFromJson(
              json['_checks'] as List<List<ChecklistCheck>>);

Map<String, dynamic> _$ChecklistEditorStoreToJson(
        ChecklistEditorStore instance) =>
    <String, dynamic>{
      '_rebreatherManufacturer': instance._rebreatherManufacturer,
      '_rebreatherModel': instance._rebreatherModel,
      '_title': instance._title,
      '_description': instance._description,
      '_diverName': instance._diverName,
      '_date': instance._date.toIso8601String(),
      '_sections': ObservableListJsonConverter.obsvbLstOfChecklistSectionToJson(
          instance._sections),
      '_checks':
          ObservableListJsonConverter.obsvbLstOfObsvbLstOfChecklistCheckToJson(
              instance._checks),
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChecklistEditorStore on _ChecklistEditorStoreBaseToJson, Store {
  late final _$_rebreatherManufacturerAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._rebreatherManufacturer',
      context: context);

  String get rebreatherManufacturer {
    _$_rebreatherManufacturerAtom.reportRead();
    return super._rebreatherManufacturer;
  }

  @override
  String get _rebreatherManufacturer => rebreatherManufacturer;

  @override
  set _rebreatherManufacturer(String value) {
    _$_rebreatherManufacturerAtom
        .reportWrite(value, super._rebreatherManufacturer, () {
      super._rebreatherManufacturer = value;
    });
  }

  late final _$_rebreatherModelAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._rebreatherModel',
      context: context);

  String get rebreatherModel {
    _$_rebreatherModelAtom.reportRead();
    return super._rebreatherModel;
  }

  @override
  String get _rebreatherModel => rebreatherModel;

  @override
  set _rebreatherModel(String value) {
    _$_rebreatherModelAtom.reportWrite(value, super._rebreatherModel, () {
      super._rebreatherModel = value;
    });
  }

  late final _$_titleAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._title', context: context);

  String get title {
    _$_titleAtom.reportRead();
    return super._title;
  }

  @override
  String get _title => title;

  @override
  set _title(String value) {
    _$_titleAtom.reportWrite(value, super._title, () {
      super._title = value;
    });
  }

  late final _$_descriptionAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._description', context: context);

  String get description {
    _$_descriptionAtom.reportRead();
    return super._description;
  }

  @override
  String get _description => description;

  @override
  set _description(String value) {
    _$_descriptionAtom.reportWrite(value, super._description, () {
      super._description = value;
    });
  }

  late final _$_diverNameAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._diverName', context: context);

  String get diverName {
    _$_diverNameAtom.reportRead();
    return super._diverName;
  }

  @override
  String get _diverName => diverName;

  @override
  set _diverName(String value) {
    _$_diverNameAtom.reportWrite(value, super._diverName, () {
      super._diverName = value;
    });
  }

  late final _$_dateAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._date', context: context);

  DateTime get date {
    _$_dateAtom.reportRead();
    return super._date;
  }

  @override
  DateTime get _date => date;

  @override
  set _date(DateTime value) {
    _$_dateAtom.reportWrite(value, super._date, () {
      super._date = value;
    });
  }

  late final _$_sectionsAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._sections', context: context);

  ObservableList<ChecklistSection> get sections {
    _$_sectionsAtom.reportRead();
    return super._sections;
  }

  @override
  ObservableList<ChecklistSection> get _sections => sections;

  @override
  set _sections(ObservableList<ChecklistSection> value) {
    _$_sectionsAtom.reportWrite(value, super._sections, () {
      super._sections = value;
    });
  }

  late final _$_checksAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._checks', context: context);

  ObservableList<ObservableList<ChecklistCheck>> get checks {
    _$_checksAtom.reportRead();
    return super._checks;
  }

  @override
  ObservableList<ObservableList<ChecklistCheck>> get _checks => checks;

  @override
  set _checks(ObservableList<ObservableList<ChecklistCheck>> value) {
    _$_checksAtom.reportWrite(value, super._checks, () {
      super._checks = value;
    });
  }

  late final _$_canUndoAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._canUndo', context: context);

  bool get canUndo {
    _$_canUndoAtom.reportRead();
    return super._canUndo;
  }

  @override
  bool get _canUndo => canUndo;

  @override
  set _canUndo(bool value) {
    _$_canUndoAtom.reportWrite(value, super._canUndo, () {
      super._canUndo = value;
    });
  }

  late final _$_canRedoAtom =
      Atom(name: '_ChecklistEditorStoreBaseToJson._canRedo', context: context);

  bool get canRedo {
    _$_canRedoAtom.reportRead();
    return super._canRedo;
  }

  @override
  bool get _canRedo => canRedo;

  @override
  set _canRedo(bool value) {
    _$_canRedoAtom.reportWrite(value, super._canRedo, () {
      super._canRedo = value;
    });
  }

  late final _$_undoDescriptionAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._undoDescription',
      context: context);

  String get undoDescription {
    _$_undoDescriptionAtom.reportRead();
    return super._undoDescription;
  }

  @override
  String get _undoDescription => undoDescription;

  @override
  set _undoDescription(String value) {
    _$_undoDescriptionAtom.reportWrite(value, super._undoDescription, () {
      super._undoDescription = value;
    });
  }

  late final _$_redoDescriptionAtom = Atom(
      name: '_ChecklistEditorStoreBaseToJson._redoDescription',
      context: context);

  String get redoDescription {
    _$_redoDescriptionAtom.reportRead();
    return super._redoDescription;
  }

  @override
  String get _redoDescription => redoDescription;

  @override
  set _redoDescription(String value) {
    _$_redoDescriptionAtom.reportWrite(value, super._redoDescription, () {
      super._redoDescription = value;
    });
  }

  late final _$_ChecklistEditorStoreBaseToJsonActionController =
      ActionController(
          name: '_ChecklistEditorStoreBaseToJson', context: context);

  @override
  void setCheckIsChecked(int sectionIndex, int checkIndex, bool value) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.setCheckIsChecked');
    try {
      return super.setCheckIsChecked(sectionIndex, checkIndex, value);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadFromTemplate(Template template) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.loadFromTemplate');
    try {
      return super.loadFromTemplate(template);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDiverName(String value) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.setDiverName');
    try {
      return super.setDiverName(value);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime value) {
    final _$actionInfo = _$_ChecklistEditorStoreBaseToJsonActionController
        .startAction(name: '_ChecklistEditorStoreBaseToJson.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$_ChecklistEditorStoreBaseToJsonActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
