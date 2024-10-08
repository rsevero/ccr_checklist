// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChecklistSection _$ChecklistSectionFromJson(Map<String, dynamic> json) {
  return _ChecklistSection.fromJson(json);
}

/// @nodoc
mixin _$ChecklistSection {
  String get title => throw _privateConstructorUsedError;
  List<ChecklistCheck> get checks => throw _privateConstructorUsedError;

  /// Serializes this ChecklistSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistSectionCopyWith<ChecklistSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistSectionCopyWith<$Res> {
  factory $ChecklistSectionCopyWith(
          ChecklistSection value, $Res Function(ChecklistSection) then) =
      _$ChecklistSectionCopyWithImpl<$Res, ChecklistSection>;
  @useResult
  $Res call({String title, List<ChecklistCheck> checks});
}

/// @nodoc
class _$ChecklistSectionCopyWithImpl<$Res, $Val extends ChecklistSection>
    implements $ChecklistSectionCopyWith<$Res> {
  _$ChecklistSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? checks = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      checks: null == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as List<ChecklistCheck>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecklistSectionImplCopyWith<$Res>
    implements $ChecklistSectionCopyWith<$Res> {
  factory _$$ChecklistSectionImplCopyWith(_$ChecklistSectionImpl value,
          $Res Function(_$ChecklistSectionImpl) then) =
      __$$ChecklistSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<ChecklistCheck> checks});
}

/// @nodoc
class __$$ChecklistSectionImplCopyWithImpl<$Res>
    extends _$ChecklistSectionCopyWithImpl<$Res, _$ChecklistSectionImpl>
    implements _$$ChecklistSectionImplCopyWith<$Res> {
  __$$ChecklistSectionImplCopyWithImpl(_$ChecklistSectionImpl _value,
      $Res Function(_$ChecklistSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChecklistSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? checks = null,
  }) {
    return _then(_$ChecklistSectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      checks: null == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as List<ChecklistCheck>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChecklistSectionImpl implements _ChecklistSection {
  _$ChecklistSectionImpl({required this.title, required this.checks});

  factory _$ChecklistSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistSectionImplFromJson(json);

  @override
  final String title;
  @override
  final List<ChecklistCheck> checks;

  @override
  String toString() {
    return 'ChecklistSection(title: $title, checks: $checks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.checks, checks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(checks));

  /// Create a copy of ChecklistSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistSectionImplCopyWith<_$ChecklistSectionImpl> get copyWith =>
      __$$ChecklistSectionImplCopyWithImpl<_$ChecklistSectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistSectionImplToJson(
      this,
    );
  }
}

abstract class _ChecklistSection implements ChecklistSection {
  factory _ChecklistSection(
      {required final String title,
      required final List<ChecklistCheck> checks}) = _$ChecklistSectionImpl;

  factory _ChecklistSection.fromJson(Map<String, dynamic> json) =
      _$ChecklistSectionImpl.fromJson;

  @override
  String get title;
  @override
  List<ChecklistCheck> get checks;

  /// Create a copy of ChecklistSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistSectionImplCopyWith<_$ChecklistSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
