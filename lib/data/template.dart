import 'package:ccr_checklist/data/template_section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'template.freezed.dart';
part 'template.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Template with _$Template {
  @JsonSerializable(explicitToJson: true)
  factory Template({
    required String rebreatherManufacturer,
    required String rebreatherModel,
    required String title,
    required String description,
    required List<TemplateSection> sections,
    @Default('') String path,
    @Default(false) bool isAsset,
  }) = _Template;

  factory Template.empty() {
    return Template(
      rebreatherManufacturer: '',
      rebreatherModel: '',
      title: '',
      description: '',
      sections: [],
    );
  }

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}
