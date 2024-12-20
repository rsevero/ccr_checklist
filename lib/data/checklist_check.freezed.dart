// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChecklistCheck _$ChecklistCheckFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'regular':
      return ChecklistRegularCheck.fromJson(json);
    case 'linearityStep1':
      return ChecklistLinearityStep1Check.fromJson(json);
    case 'linearityStep2':
      return ChecklistLinearityStep2Check.fromJson(json);
    case 'completeLinearity':
      return ChecklistCompleteLinearityCheck.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ChecklistCheck',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChecklistCheck {
  String get description => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  DateTime get lastChange => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)
        regular,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        linearityStep1,
    required TResult Function(
            String description, bool isChecked, DateTime lastChange)
        linearityStep2,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        completeLinearity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult? Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChecklistRegularCheck value) regular,
    required TResult Function(ChecklistLinearityStep1Check value)
        linearityStep1,
    required TResult Function(ChecklistLinearityStep2Check value)
        linearityStep2,
    required TResult Function(ChecklistCompleteLinearityCheck value)
        completeLinearity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChecklistRegularCheck value)? regular,
    TResult? Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult? Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult? Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChecklistRegularCheck value)? regular,
    TResult Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChecklistCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistCheckCopyWith<ChecklistCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistCheckCopyWith<$Res> {
  factory $ChecklistCheckCopyWith(
          ChecklistCheck value, $Res Function(ChecklistCheck) then) =
      _$ChecklistCheckCopyWithImpl<$Res, ChecklistCheck>;
  @useResult
  $Res call({String description, bool isChecked, DateTime lastChange});
}

/// @nodoc
class _$ChecklistCheckCopyWithImpl<$Res, $Val extends ChecklistCheck>
    implements $ChecklistCheckCopyWith<$Res> {
  _$ChecklistCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isChecked = null,
    Object? lastChange = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lastChange: null == lastChange
          ? _value.lastChange
          : lastChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecklistRegularCheckImplCopyWith<$Res>
    implements $ChecklistCheckCopyWith<$Res> {
  factory _$$ChecklistRegularCheckImplCopyWith(
          _$ChecklistRegularCheckImpl value,
          $Res Function(_$ChecklistRegularCheckImpl) then) =
      __$$ChecklistRegularCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String observation,
      bool isChecked,
      DateTime lastChange,
      int secondsTimer,
      List<RegularCheckReference> references});
}

/// @nodoc
class __$$ChecklistRegularCheckImplCopyWithImpl<$Res>
    extends _$ChecklistCheckCopyWithImpl<$Res, _$ChecklistRegularCheckImpl>
    implements _$$ChecklistRegularCheckImplCopyWith<$Res> {
  __$$ChecklistRegularCheckImplCopyWithImpl(_$ChecklistRegularCheckImpl _value,
      $Res Function(_$ChecklistRegularCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? observation = null,
    Object? isChecked = null,
    Object? lastChange = null,
    Object? secondsTimer = null,
    Object? references = null,
  }) {
    return _then(_$ChecklistRegularCheckImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      observation: null == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lastChange: null == lastChange
          ? _value.lastChange
          : lastChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      secondsTimer: null == secondsTimer
          ? _value.secondsTimer
          : secondsTimer // ignore: cast_nullable_to_non_nullable
              as int,
      references: null == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<RegularCheckReference>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistRegularCheckImpl extends ChecklistRegularCheck
    with DiagnosticableTreeMixin {
  _$ChecklistRegularCheckImpl(
      {required this.description,
      required this.observation,
      required this.isChecked,
      required this.lastChange,
      required this.secondsTimer,
      required this.references,
      final String? $type})
      : $type = $type ?? 'regular',
        super._();

  factory _$ChecklistRegularCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistRegularCheckImplFromJson(json);

  @override
  final String description;
  @override
  final String observation;
  @override
  final bool isChecked;
  @override
  final DateTime lastChange;
  @override
  final int secondsTimer;
  @override
  final List<RegularCheckReference> references;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChecklistCheck.regular(description: $description, observation: $observation, isChecked: $isChecked, lastChange: $lastChange, secondsTimer: $secondsTimer, references: $references)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChecklistCheck.regular'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('observation', observation))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('lastChange', lastChange))
      ..add(DiagnosticsProperty('secondsTimer', secondsTimer))
      ..add(DiagnosticsProperty('references', references));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistRegularCheckImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.observation, observation) ||
                other.observation == observation) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.lastChange, lastChange) ||
                other.lastChange == lastChange) &&
            (identical(other.secondsTimer, secondsTimer) ||
                other.secondsTimer == secondsTimer) &&
            const DeepCollectionEquality()
                .equals(other.references, references));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      observation,
      isChecked,
      lastChange,
      secondsTimer,
      const DeepCollectionEquality().hash(references));

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistRegularCheckImplCopyWith<_$ChecklistRegularCheckImpl>
      get copyWith => __$$ChecklistRegularCheckImplCopyWithImpl<
          _$ChecklistRegularCheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)
        regular,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        linearityStep1,
    required TResult Function(
            String description, bool isChecked, DateTime lastChange)
        linearityStep2,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        completeLinearity,
  }) {
    return regular(description, observation, isChecked, lastChange,
        secondsTimer, references);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult? Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
  }) {
    return regular?.call(description, observation, isChecked, lastChange,
        secondsTimer, references);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(description, observation, isChecked, lastChange,
          secondsTimer, references);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChecklistRegularCheck value) regular,
    required TResult Function(ChecklistLinearityStep1Check value)
        linearityStep1,
    required TResult Function(ChecklistLinearityStep2Check value)
        linearityStep2,
    required TResult Function(ChecklistCompleteLinearityCheck value)
        completeLinearity,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChecklistRegularCheck value)? regular,
    TResult? Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult? Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult? Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChecklistRegularCheck value)? regular,
    TResult Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistRegularCheckImplToJson(
      this,
    );
  }
}

abstract class ChecklistRegularCheck extends ChecklistCheck {
  factory ChecklistRegularCheck(
          {required final String description,
          required final String observation,
          required final bool isChecked,
          required final DateTime lastChange,
          required final int secondsTimer,
          required final List<RegularCheckReference> references}) =
      _$ChecklistRegularCheckImpl;
  ChecklistRegularCheck._() : super._();

  factory ChecklistRegularCheck.fromJson(Map<String, dynamic> json) =
      _$ChecklistRegularCheckImpl.fromJson;

  @override
  String get description;
  String get observation;
  @override
  bool get isChecked;
  @override
  DateTime get lastChange;
  int get secondsTimer;
  List<RegularCheckReference> get references;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistRegularCheckImplCopyWith<_$ChecklistRegularCheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChecklistLinearityStep1CheckImplCopyWith<$Res>
    implements $ChecklistCheckCopyWith<$Res> {
  factory _$$ChecklistLinearityStep1CheckImplCopyWith(
          _$ChecklistLinearityStep1CheckImpl value,
          $Res Function(_$ChecklistLinearityStep1CheckImpl) then) =
      __$$ChecklistLinearityStep1CheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String measurement,
      String description,
      bool isChecked,
      DateTime lastChange,
      int referenceCount});
}

/// @nodoc
class __$$ChecklistLinearityStep1CheckImplCopyWithImpl<$Res>
    extends _$ChecklistCheckCopyWithImpl<$Res,
        _$ChecklistLinearityStep1CheckImpl>
    implements _$$ChecklistLinearityStep1CheckImplCopyWith<$Res> {
  __$$ChecklistLinearityStep1CheckImplCopyWithImpl(
      _$ChecklistLinearityStep1CheckImpl _value,
      $Res Function(_$ChecklistLinearityStep1CheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurement = null,
    Object? description = null,
    Object? isChecked = null,
    Object? lastChange = null,
    Object? referenceCount = null,
  }) {
    return _then(_$ChecklistLinearityStep1CheckImpl(
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lastChange: null == lastChange
          ? _value.lastChange
          : lastChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceCount: null == referenceCount
          ? _value.referenceCount
          : referenceCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistLinearityStep1CheckImpl extends ChecklistLinearityStep1Check
    with DiagnosticableTreeMixin {
  _$ChecklistLinearityStep1CheckImpl(
      {required this.measurement,
      required this.description,
      required this.isChecked,
      required this.lastChange,
      required this.referenceCount,
      final String? $type})
      : $type = $type ?? 'linearityStep1',
        super._();

  factory _$ChecklistLinearityStep1CheckImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChecklistLinearityStep1CheckImplFromJson(json);

  @override
  final String measurement;
  @override
  final String description;
  @override
  final bool isChecked;
  @override
  final DateTime lastChange;
  @override
  final int referenceCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChecklistCheck.linearityStep1(measurement: $measurement, description: $description, isChecked: $isChecked, lastChange: $lastChange, referenceCount: $referenceCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChecklistCheck.linearityStep1'))
      ..add(DiagnosticsProperty('measurement', measurement))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('lastChange', lastChange))
      ..add(DiagnosticsProperty('referenceCount', referenceCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistLinearityStep1CheckImpl &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.lastChange, lastChange) ||
                other.lastChange == lastChange) &&
            (identical(other.referenceCount, referenceCount) ||
                other.referenceCount == referenceCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, measurement, description,
      isChecked, lastChange, referenceCount);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistLinearityStep1CheckImplCopyWith<
          _$ChecklistLinearityStep1CheckImpl>
      get copyWith => __$$ChecklistLinearityStep1CheckImplCopyWithImpl<
          _$ChecklistLinearityStep1CheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)
        regular,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        linearityStep1,
    required TResult Function(
            String description, bool isChecked, DateTime lastChange)
        linearityStep2,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        completeLinearity,
  }) {
    return linearityStep1(
        measurement, description, isChecked, lastChange, referenceCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult? Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
  }) {
    return linearityStep1?.call(
        measurement, description, isChecked, lastChange, referenceCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
    required TResult orElse(),
  }) {
    if (linearityStep1 != null) {
      return linearityStep1(
          measurement, description, isChecked, lastChange, referenceCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChecklistRegularCheck value) regular,
    required TResult Function(ChecklistLinearityStep1Check value)
        linearityStep1,
    required TResult Function(ChecklistLinearityStep2Check value)
        linearityStep2,
    required TResult Function(ChecklistCompleteLinearityCheck value)
        completeLinearity,
  }) {
    return linearityStep1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChecklistRegularCheck value)? regular,
    TResult? Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult? Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult? Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
  }) {
    return linearityStep1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChecklistRegularCheck value)? regular,
    TResult Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
    required TResult orElse(),
  }) {
    if (linearityStep1 != null) {
      return linearityStep1(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistLinearityStep1CheckImplToJson(
      this,
    );
  }
}

abstract class ChecklistLinearityStep1Check extends ChecklistCheck {
  factory ChecklistLinearityStep1Check(
      {required final String measurement,
      required final String description,
      required final bool isChecked,
      required final DateTime lastChange,
      required final int referenceCount}) = _$ChecklistLinearityStep1CheckImpl;
  ChecklistLinearityStep1Check._() : super._();

  factory ChecklistLinearityStep1Check.fromJson(Map<String, dynamic> json) =
      _$ChecklistLinearityStep1CheckImpl.fromJson;

  String get measurement;
  @override
  String get description;
  @override
  bool get isChecked;
  @override
  DateTime get lastChange;
  int get referenceCount;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistLinearityStep1CheckImplCopyWith<
          _$ChecklistLinearityStep1CheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChecklistLinearityStep2CheckImplCopyWith<$Res>
    implements $ChecklistCheckCopyWith<$Res> {
  factory _$$ChecklistLinearityStep2CheckImplCopyWith(
          _$ChecklistLinearityStep2CheckImpl value,
          $Res Function(_$ChecklistLinearityStep2CheckImpl) then) =
      __$$ChecklistLinearityStep2CheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, bool isChecked, DateTime lastChange});
}

/// @nodoc
class __$$ChecklistLinearityStep2CheckImplCopyWithImpl<$Res>
    extends _$ChecklistCheckCopyWithImpl<$Res,
        _$ChecklistLinearityStep2CheckImpl>
    implements _$$ChecklistLinearityStep2CheckImplCopyWith<$Res> {
  __$$ChecklistLinearityStep2CheckImplCopyWithImpl(
      _$ChecklistLinearityStep2CheckImpl _value,
      $Res Function(_$ChecklistLinearityStep2CheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isChecked = null,
    Object? lastChange = null,
  }) {
    return _then(_$ChecklistLinearityStep2CheckImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lastChange: null == lastChange
          ? _value.lastChange
          : lastChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistLinearityStep2CheckImpl extends ChecklistLinearityStep2Check
    with DiagnosticableTreeMixin {
  _$ChecklistLinearityStep2CheckImpl(
      {required this.description,
      required this.isChecked,
      required this.lastChange,
      final String? $type})
      : $type = $type ?? 'linearityStep2',
        super._();

  factory _$ChecklistLinearityStep2CheckImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChecklistLinearityStep2CheckImplFromJson(json);

  @override
  final String description;
  @override
  final bool isChecked;
  @override
  final DateTime lastChange;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChecklistCheck.linearityStep2(description: $description, isChecked: $isChecked, lastChange: $lastChange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChecklistCheck.linearityStep2'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('lastChange', lastChange));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistLinearityStep2CheckImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.lastChange, lastChange) ||
                other.lastChange == lastChange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, isChecked, lastChange);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistLinearityStep2CheckImplCopyWith<
          _$ChecklistLinearityStep2CheckImpl>
      get copyWith => __$$ChecklistLinearityStep2CheckImplCopyWithImpl<
          _$ChecklistLinearityStep2CheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)
        regular,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        linearityStep1,
    required TResult Function(
            String description, bool isChecked, DateTime lastChange)
        linearityStep2,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        completeLinearity,
  }) {
    return linearityStep2(description, isChecked, lastChange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult? Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
  }) {
    return linearityStep2?.call(description, isChecked, lastChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
    required TResult orElse(),
  }) {
    if (linearityStep2 != null) {
      return linearityStep2(description, isChecked, lastChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChecklistRegularCheck value) regular,
    required TResult Function(ChecklistLinearityStep1Check value)
        linearityStep1,
    required TResult Function(ChecklistLinearityStep2Check value)
        linearityStep2,
    required TResult Function(ChecklistCompleteLinearityCheck value)
        completeLinearity,
  }) {
    return linearityStep2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChecklistRegularCheck value)? regular,
    TResult? Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult? Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult? Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
  }) {
    return linearityStep2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChecklistRegularCheck value)? regular,
    TResult Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
    required TResult orElse(),
  }) {
    if (linearityStep2 != null) {
      return linearityStep2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistLinearityStep2CheckImplToJson(
      this,
    );
  }
}

abstract class ChecklistLinearityStep2Check extends ChecklistCheck {
  factory ChecklistLinearityStep2Check(
      {required final String description,
      required final bool isChecked,
      required final DateTime lastChange}) = _$ChecklistLinearityStep2CheckImpl;
  ChecklistLinearityStep2Check._() : super._();

  factory ChecklistLinearityStep2Check.fromJson(Map<String, dynamic> json) =
      _$ChecklistLinearityStep2CheckImpl.fromJson;

  @override
  String get description;
  @override
  bool get isChecked;
  @override
  DateTime get lastChange;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistLinearityStep2CheckImplCopyWith<
          _$ChecklistLinearityStep2CheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChecklistCompleteLinearityCheckImplCopyWith<$Res>
    implements $ChecklistCheckCopyWith<$Res> {
  factory _$$ChecklistCompleteLinearityCheckImplCopyWith(
          _$ChecklistCompleteLinearityCheckImpl value,
          $Res Function(_$ChecklistCompleteLinearityCheckImpl) then) =
      __$$ChecklistCompleteLinearityCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String measurement,
      String description,
      bool isChecked,
      DateTime lastChange,
      int referenceCount});
}

/// @nodoc
class __$$ChecklistCompleteLinearityCheckImplCopyWithImpl<$Res>
    extends _$ChecklistCheckCopyWithImpl<$Res,
        _$ChecklistCompleteLinearityCheckImpl>
    implements _$$ChecklistCompleteLinearityCheckImplCopyWith<$Res> {
  __$$ChecklistCompleteLinearityCheckImplCopyWithImpl(
      _$ChecklistCompleteLinearityCheckImpl _value,
      $Res Function(_$ChecklistCompleteLinearityCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurement = null,
    Object? description = null,
    Object? isChecked = null,
    Object? lastChange = null,
    Object? referenceCount = null,
  }) {
    return _then(_$ChecklistCompleteLinearityCheckImpl(
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lastChange: null == lastChange
          ? _value.lastChange
          : lastChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceCount: null == referenceCount
          ? _value.referenceCount
          : referenceCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistCompleteLinearityCheckImpl
    extends ChecklistCompleteLinearityCheck with DiagnosticableTreeMixin {
  _$ChecklistCompleteLinearityCheckImpl(
      {required this.measurement,
      required this.description,
      required this.isChecked,
      required this.lastChange,
      required this.referenceCount,
      final String? $type})
      : $type = $type ?? 'completeLinearity',
        super._();

  factory _$ChecklistCompleteLinearityCheckImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChecklistCompleteLinearityCheckImplFromJson(json);

  @override
  final String measurement;
  @override
  final String description;
  @override
  final bool isChecked;
  @override
  final DateTime lastChange;
  @override
  final int referenceCount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChecklistCheck.completeLinearity(measurement: $measurement, description: $description, isChecked: $isChecked, lastChange: $lastChange, referenceCount: $referenceCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChecklistCheck.completeLinearity'))
      ..add(DiagnosticsProperty('measurement', measurement))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('lastChange', lastChange))
      ..add(DiagnosticsProperty('referenceCount', referenceCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistCompleteLinearityCheckImpl &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.lastChange, lastChange) ||
                other.lastChange == lastChange) &&
            (identical(other.referenceCount, referenceCount) ||
                other.referenceCount == referenceCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, measurement, description,
      isChecked, lastChange, referenceCount);

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistCompleteLinearityCheckImplCopyWith<
          _$ChecklistCompleteLinearityCheckImpl>
      get copyWith => __$$ChecklistCompleteLinearityCheckImplCopyWithImpl<
          _$ChecklistCompleteLinearityCheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)
        regular,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        linearityStep1,
    required TResult Function(
            String description, bool isChecked, DateTime lastChange)
        linearityStep2,
    required TResult Function(String measurement, String description,
            bool isChecked, DateTime lastChange, int referenceCount)
        completeLinearity,
  }) {
    return completeLinearity(
        measurement, description, isChecked, lastChange, referenceCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult? Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult? Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
  }) {
    return completeLinearity?.call(
        measurement, description, isChecked, lastChange, referenceCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String description,
            String observation,
            bool isChecked,
            DateTime lastChange,
            int secondsTimer,
            List<RegularCheckReference> references)?
        regular,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        linearityStep1,
    TResult Function(String description, bool isChecked, DateTime lastChange)?
        linearityStep2,
    TResult Function(String measurement, String description, bool isChecked,
            DateTime lastChange, int referenceCount)?
        completeLinearity,
    required TResult orElse(),
  }) {
    if (completeLinearity != null) {
      return completeLinearity(
          measurement, description, isChecked, lastChange, referenceCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChecklistRegularCheck value) regular,
    required TResult Function(ChecklistLinearityStep1Check value)
        linearityStep1,
    required TResult Function(ChecklistLinearityStep2Check value)
        linearityStep2,
    required TResult Function(ChecklistCompleteLinearityCheck value)
        completeLinearity,
  }) {
    return completeLinearity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChecklistRegularCheck value)? regular,
    TResult? Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult? Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult? Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
  }) {
    return completeLinearity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChecklistRegularCheck value)? regular,
    TResult Function(ChecklistLinearityStep1Check value)? linearityStep1,
    TResult Function(ChecklistLinearityStep2Check value)? linearityStep2,
    TResult Function(ChecklistCompleteLinearityCheck value)? completeLinearity,
    required TResult orElse(),
  }) {
    if (completeLinearity != null) {
      return completeLinearity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistCompleteLinearityCheckImplToJson(
      this,
    );
  }
}

abstract class ChecklistCompleteLinearityCheck extends ChecklistCheck {
  factory ChecklistCompleteLinearityCheck(
          {required final String measurement,
          required final String description,
          required final bool isChecked,
          required final DateTime lastChange,
          required final int referenceCount}) =
      _$ChecklistCompleteLinearityCheckImpl;
  ChecklistCompleteLinearityCheck._() : super._();

  factory ChecklistCompleteLinearityCheck.fromJson(Map<String, dynamic> json) =
      _$ChecklistCompleteLinearityCheckImpl.fromJson;

  String get measurement;
  @override
  String get description;
  @override
  bool get isChecked;
  @override
  DateTime get lastChange;
  int get referenceCount;

  /// Create a copy of ChecklistCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistCompleteLinearityCheckImplCopyWith<
          _$ChecklistCompleteLinearityCheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}
