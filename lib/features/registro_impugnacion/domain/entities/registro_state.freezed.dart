// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegistroState _$RegistroStateFromJson(Map<String, dynamic> json) {
  return _RegistroState.fromJson(json);
}

/// @nodoc
mixin _$RegistroState {
  /// Paso actual del wizard (0-5)
  int get currentStep => throw _privateConstructorUsedError;

  /// Datos de cada paso del wizard
  Step0Data? get step0Data => throw _privateConstructorUsedError;
  Step1Data? get step1Data => throw _privateConstructorUsedError;
  Step2Data? get step2Data => throw _privateConstructorUsedError;
  Step3Data? get step3Data => throw _privateConstructorUsedError;
  Step4Data? get step4Data => throw _privateConstructorUsedError;
  Step5Data? get step5Data => throw _privateConstructorUsedError;

  /// Validez de cada paso
  Map<int, bool> get stepsValidity => throw _privateConstructorUsedError;

  /// Estado de envío
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this RegistroState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistroStateCopyWith<RegistroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistroStateCopyWith<$Res> {
  factory $RegistroStateCopyWith(
    RegistroState value,
    $Res Function(RegistroState) then,
  ) = _$RegistroStateCopyWithImpl<$Res, RegistroState>;
  @useResult
  $Res call({
    int currentStep,
    Step0Data? step0Data,
    Step1Data? step1Data,
    Step2Data? step2Data,
    Step3Data? step3Data,
    Step4Data? step4Data,
    Step5Data? step5Data,
    Map<int, bool> stepsValidity,
    bool isSubmitting,
    bool isSuccess,
    String? errorMessage,
  });

  $Step0DataCopyWith<$Res>? get step0Data;
  $Step1DataCopyWith<$Res>? get step1Data;
  $Step2DataCopyWith<$Res>? get step2Data;
  $Step3DataCopyWith<$Res>? get step3Data;
  $Step4DataCopyWith<$Res>? get step4Data;
  $Step5DataCopyWith<$Res>? get step5Data;
}

/// @nodoc
class _$RegistroStateCopyWithImpl<$Res, $Val extends RegistroState>
    implements $RegistroStateCopyWith<$Res> {
  _$RegistroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? step0Data = freezed,
    Object? step1Data = freezed,
    Object? step2Data = freezed,
    Object? step3Data = freezed,
    Object? step4Data = freezed,
    Object? step5Data = freezed,
    Object? stepsValidity = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentStep: null == currentStep
                ? _value.currentStep
                : currentStep // ignore: cast_nullable_to_non_nullable
                      as int,
            step0Data: freezed == step0Data
                ? _value.step0Data
                : step0Data // ignore: cast_nullable_to_non_nullable
                      as Step0Data?,
            step1Data: freezed == step1Data
                ? _value.step1Data
                : step1Data // ignore: cast_nullable_to_non_nullable
                      as Step1Data?,
            step2Data: freezed == step2Data
                ? _value.step2Data
                : step2Data // ignore: cast_nullable_to_non_nullable
                      as Step2Data?,
            step3Data: freezed == step3Data
                ? _value.step3Data
                : step3Data // ignore: cast_nullable_to_non_nullable
                      as Step3Data?,
            step4Data: freezed == step4Data
                ? _value.step4Data
                : step4Data // ignore: cast_nullable_to_non_nullable
                      as Step4Data?,
            step5Data: freezed == step5Data
                ? _value.step5Data
                : step5Data // ignore: cast_nullable_to_non_nullable
                      as Step5Data?,
            stepsValidity: null == stepsValidity
                ? _value.stepsValidity
                : stepsValidity // ignore: cast_nullable_to_non_nullable
                      as Map<int, bool>,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSuccess: null == isSuccess
                ? _value.isSuccess
                : isSuccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step0DataCopyWith<$Res>? get step0Data {
    if (_value.step0Data == null) {
      return null;
    }

    return $Step0DataCopyWith<$Res>(_value.step0Data!, (value) {
      return _then(_value.copyWith(step0Data: value) as $Val);
    });
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step1DataCopyWith<$Res>? get step1Data {
    if (_value.step1Data == null) {
      return null;
    }

    return $Step1DataCopyWith<$Res>(_value.step1Data!, (value) {
      return _then(_value.copyWith(step1Data: value) as $Val);
    });
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step2DataCopyWith<$Res>? get step2Data {
    if (_value.step2Data == null) {
      return null;
    }

    return $Step2DataCopyWith<$Res>(_value.step2Data!, (value) {
      return _then(_value.copyWith(step2Data: value) as $Val);
    });
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step3DataCopyWith<$Res>? get step3Data {
    if (_value.step3Data == null) {
      return null;
    }

    return $Step3DataCopyWith<$Res>(_value.step3Data!, (value) {
      return _then(_value.copyWith(step3Data: value) as $Val);
    });
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step4DataCopyWith<$Res>? get step4Data {
    if (_value.step4Data == null) {
      return null;
    }

    return $Step4DataCopyWith<$Res>(_value.step4Data!, (value) {
      return _then(_value.copyWith(step4Data: value) as $Val);
    });
  }

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Step5DataCopyWith<$Res>? get step5Data {
    if (_value.step5Data == null) {
      return null;
    }

    return $Step5DataCopyWith<$Res>(_value.step5Data!, (value) {
      return _then(_value.copyWith(step5Data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistroStateImplCopyWith<$Res>
    implements $RegistroStateCopyWith<$Res> {
  factory _$$RegistroStateImplCopyWith(
    _$RegistroStateImpl value,
    $Res Function(_$RegistroStateImpl) then,
  ) = __$$RegistroStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentStep,
    Step0Data? step0Data,
    Step1Data? step1Data,
    Step2Data? step2Data,
    Step3Data? step3Data,
    Step4Data? step4Data,
    Step5Data? step5Data,
    Map<int, bool> stepsValidity,
    bool isSubmitting,
    bool isSuccess,
    String? errorMessage,
  });

  @override
  $Step0DataCopyWith<$Res>? get step0Data;
  @override
  $Step1DataCopyWith<$Res>? get step1Data;
  @override
  $Step2DataCopyWith<$Res>? get step2Data;
  @override
  $Step3DataCopyWith<$Res>? get step3Data;
  @override
  $Step4DataCopyWith<$Res>? get step4Data;
  @override
  $Step5DataCopyWith<$Res>? get step5Data;
}

/// @nodoc
class __$$RegistroStateImplCopyWithImpl<$Res>
    extends _$RegistroStateCopyWithImpl<$Res, _$RegistroStateImpl>
    implements _$$RegistroStateImplCopyWith<$Res> {
  __$$RegistroStateImplCopyWithImpl(
    _$RegistroStateImpl _value,
    $Res Function(_$RegistroStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? step0Data = freezed,
    Object? step1Data = freezed,
    Object? step2Data = freezed,
    Object? step3Data = freezed,
    Object? step4Data = freezed,
    Object? step5Data = freezed,
    Object? stepsValidity = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$RegistroStateImpl(
        currentStep: null == currentStep
            ? _value.currentStep
            : currentStep // ignore: cast_nullable_to_non_nullable
                  as int,
        step0Data: freezed == step0Data
            ? _value.step0Data
            : step0Data // ignore: cast_nullable_to_non_nullable
                  as Step0Data?,
        step1Data: freezed == step1Data
            ? _value.step1Data
            : step1Data // ignore: cast_nullable_to_non_nullable
                  as Step1Data?,
        step2Data: freezed == step2Data
            ? _value.step2Data
            : step2Data // ignore: cast_nullable_to_non_nullable
                  as Step2Data?,
        step3Data: freezed == step3Data
            ? _value.step3Data
            : step3Data // ignore: cast_nullable_to_non_nullable
                  as Step3Data?,
        step4Data: freezed == step4Data
            ? _value.step4Data
            : step4Data // ignore: cast_nullable_to_non_nullable
                  as Step4Data?,
        step5Data: freezed == step5Data
            ? _value.step5Data
            : step5Data // ignore: cast_nullable_to_non_nullable
                  as Step5Data?,
        stepsValidity: null == stepsValidity
            ? _value._stepsValidity
            : stepsValidity // ignore: cast_nullable_to_non_nullable
                  as Map<int, bool>,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSuccess: null == isSuccess
            ? _value.isSuccess
            : isSuccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistroStateImpl implements _RegistroState {
  const _$RegistroStateImpl({
    this.currentStep = 0,
    this.step0Data,
    this.step1Data,
    this.step2Data,
    this.step3Data,
    this.step4Data,
    this.step5Data,
    final Map<int, bool> stepsValidity = const {},
    this.isSubmitting = false,
    this.isSuccess = false,
    this.errorMessage,
  }) : _stepsValidity = stepsValidity;

  factory _$RegistroStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistroStateImplFromJson(json);

  /// Paso actual del wizard (0-5)
  @override
  @JsonKey()
  final int currentStep;

  /// Datos de cada paso del wizard
  @override
  final Step0Data? step0Data;
  @override
  final Step1Data? step1Data;
  @override
  final Step2Data? step2Data;
  @override
  final Step3Data? step3Data;
  @override
  final Step4Data? step4Data;
  @override
  final Step5Data? step5Data;

  /// Validez de cada paso
  final Map<int, bool> _stepsValidity;

  /// Validez de cada paso
  @override
  @JsonKey()
  Map<int, bool> get stepsValidity {
    if (_stepsValidity is EqualUnmodifiableMapView) return _stepsValidity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stepsValidity);
  }

  /// Estado de envío
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegistroState(currentStep: $currentStep, step0Data: $step0Data, step1Data: $step1Data, step2Data: $step2Data, step3Data: $step3Data, step4Data: $step4Data, step5Data: $step5Data, stepsValidity: $stepsValidity, isSubmitting: $isSubmitting, isSuccess: $isSuccess, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistroStateImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.step0Data, step0Data) ||
                other.step0Data == step0Data) &&
            (identical(other.step1Data, step1Data) ||
                other.step1Data == step1Data) &&
            (identical(other.step2Data, step2Data) ||
                other.step2Data == step2Data) &&
            (identical(other.step3Data, step3Data) ||
                other.step3Data == step3Data) &&
            (identical(other.step4Data, step4Data) ||
                other.step4Data == step4Data) &&
            (identical(other.step5Data, step5Data) ||
                other.step5Data == step5Data) &&
            const DeepCollectionEquality().equals(
              other._stepsValidity,
              _stepsValidity,
            ) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentStep,
    step0Data,
    step1Data,
    step2Data,
    step3Data,
    step4Data,
    step5Data,
    const DeepCollectionEquality().hash(_stepsValidity),
    isSubmitting,
    isSuccess,
    errorMessage,
  );

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistroStateImplCopyWith<_$RegistroStateImpl> get copyWith =>
      __$$RegistroStateImplCopyWithImpl<_$RegistroStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistroStateImplToJson(this);
  }
}

abstract class _RegistroState implements RegistroState {
  const factory _RegistroState({
    final int currentStep,
    final Step0Data? step0Data,
    final Step1Data? step1Data,
    final Step2Data? step2Data,
    final Step3Data? step3Data,
    final Step4Data? step4Data,
    final Step5Data? step5Data,
    final Map<int, bool> stepsValidity,
    final bool isSubmitting,
    final bool isSuccess,
    final String? errorMessage,
  }) = _$RegistroStateImpl;

  factory _RegistroState.fromJson(Map<String, dynamic> json) =
      _$RegistroStateImpl.fromJson;

  /// Paso actual del wizard (0-5)
  @override
  int get currentStep;

  /// Datos de cada paso del wizard
  @override
  Step0Data? get step0Data;
  @override
  Step1Data? get step1Data;
  @override
  Step2Data? get step2Data;
  @override
  Step3Data? get step3Data;
  @override
  Step4Data? get step4Data;
  @override
  Step5Data? get step5Data;

  /// Validez de cada paso
  @override
  Map<int, bool> get stepsValidity;

  /// Estado de envío
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  String? get errorMessage;

  /// Create a copy of RegistroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistroStateImplCopyWith<_$RegistroStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step0Data _$Step0DataFromJson(Map<String, dynamic> json) {
  return _Step0Data.fromJson(json);
}

/// @nodoc
mixin _$Step0Data {
  /// Tipo de registrante: 'titular' o 'representantes'
  String get option => throw _privateConstructorUsedError;

  /// Tipo de impugnación seleccionada
  String? get tipoImpugnacion => throw _privateConstructorUsedError;

  /// Folio del expediente (opcional)
  String? get folio => throw _privateConstructorUsedError;

  /// Serializes this Step0Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step0Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step0DataCopyWith<Step0Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step0DataCopyWith<$Res> {
  factory $Step0DataCopyWith(Step0Data value, $Res Function(Step0Data) then) =
      _$Step0DataCopyWithImpl<$Res, Step0Data>;
  @useResult
  $Res call({String option, String? tipoImpugnacion, String? folio});
}

/// @nodoc
class _$Step0DataCopyWithImpl<$Res, $Val extends Step0Data>
    implements $Step0DataCopyWith<$Res> {
  _$Step0DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step0Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? tipoImpugnacion = freezed,
    Object? folio = freezed,
  }) {
    return _then(
      _value.copyWith(
            option: null == option
                ? _value.option
                : option // ignore: cast_nullable_to_non_nullable
                      as String,
            tipoImpugnacion: freezed == tipoImpugnacion
                ? _value.tipoImpugnacion
                : tipoImpugnacion // ignore: cast_nullable_to_non_nullable
                      as String?,
            folio: freezed == folio
                ? _value.folio
                : folio // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step0DataImplCopyWith<$Res>
    implements $Step0DataCopyWith<$Res> {
  factory _$$Step0DataImplCopyWith(
    _$Step0DataImpl value,
    $Res Function(_$Step0DataImpl) then,
  ) = __$$Step0DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String option, String? tipoImpugnacion, String? folio});
}

/// @nodoc
class __$$Step0DataImplCopyWithImpl<$Res>
    extends _$Step0DataCopyWithImpl<$Res, _$Step0DataImpl>
    implements _$$Step0DataImplCopyWith<$Res> {
  __$$Step0DataImplCopyWithImpl(
    _$Step0DataImpl _value,
    $Res Function(_$Step0DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step0Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? tipoImpugnacion = freezed,
    Object? folio = freezed,
  }) {
    return _then(
      _$Step0DataImpl(
        option: null == option
            ? _value.option
            : option // ignore: cast_nullable_to_non_nullable
                  as String,
        tipoImpugnacion: freezed == tipoImpugnacion
            ? _value.tipoImpugnacion
            : tipoImpugnacion // ignore: cast_nullable_to_non_nullable
                  as String?,
        folio: freezed == folio
            ? _value.folio
            : folio // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step0DataImpl implements _Step0Data {
  const _$Step0DataImpl({
    required this.option,
    this.tipoImpugnacion,
    this.folio,
  });

  factory _$Step0DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step0DataImplFromJson(json);

  /// Tipo de registrante: 'titular' o 'representantes'
  @override
  final String option;

  /// Tipo de impugnación seleccionada
  @override
  final String? tipoImpugnacion;

  /// Folio del expediente (opcional)
  @override
  final String? folio;

  @override
  String toString() {
    return 'Step0Data(option: $option, tipoImpugnacion: $tipoImpugnacion, folio: $folio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step0DataImpl &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.tipoImpugnacion, tipoImpugnacion) ||
                other.tipoImpugnacion == tipoImpugnacion) &&
            (identical(other.folio, folio) || other.folio == folio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, option, tipoImpugnacion, folio);

  /// Create a copy of Step0Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step0DataImplCopyWith<_$Step0DataImpl> get copyWith =>
      __$$Step0DataImplCopyWithImpl<_$Step0DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step0DataImplToJson(this);
  }
}

abstract class _Step0Data implements Step0Data {
  const factory _Step0Data({
    required final String option,
    final String? tipoImpugnacion,
    final String? folio,
  }) = _$Step0DataImpl;

  factory _Step0Data.fromJson(Map<String, dynamic> json) =
      _$Step0DataImpl.fromJson;

  /// Tipo de registrante: 'titular' o 'representantes'
  @override
  String get option;

  /// Tipo de impugnación seleccionada
  @override
  String? get tipoImpugnacion;

  /// Folio del expediente (opcional)
  @override
  String? get folio;

  /// Create a copy of Step0Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step0DataImplCopyWith<_$Step0DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step1Data _$Step1DataFromJson(Map<String, dynamic> json) {
  return _Step1Data.fromJson(json);
}

/// @nodoc
mixin _$Step1Data {
  /// Opción seleccionada
  String get option => throw _privateConstructorUsedError;

  /// Nombre del titular (si aplica)
  String? get nombreTitular => throw _privateConstructorUsedError;

  /// Lista de representantes
  List<Representante> get representantes => throw _privateConstructorUsedError;

  /// Serializes this Step1Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step1Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step1DataCopyWith<Step1Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step1DataCopyWith<$Res> {
  factory $Step1DataCopyWith(Step1Data value, $Res Function(Step1Data) then) =
      _$Step1DataCopyWithImpl<$Res, Step1Data>;
  @useResult
  $Res call({
    String option,
    String? nombreTitular,
    List<Representante> representantes,
  });
}

/// @nodoc
class _$Step1DataCopyWithImpl<$Res, $Val extends Step1Data>
    implements $Step1DataCopyWith<$Res> {
  _$Step1DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step1Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? nombreTitular = freezed,
    Object? representantes = null,
  }) {
    return _then(
      _value.copyWith(
            option: null == option
                ? _value.option
                : option // ignore: cast_nullable_to_non_nullable
                      as String,
            nombreTitular: freezed == nombreTitular
                ? _value.nombreTitular
                : nombreTitular // ignore: cast_nullable_to_non_nullable
                      as String?,
            representantes: null == representantes
                ? _value.representantes
                : representantes // ignore: cast_nullable_to_non_nullable
                      as List<Representante>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step1DataImplCopyWith<$Res>
    implements $Step1DataCopyWith<$Res> {
  factory _$$Step1DataImplCopyWith(
    _$Step1DataImpl value,
    $Res Function(_$Step1DataImpl) then,
  ) = __$$Step1DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String option,
    String? nombreTitular,
    List<Representante> representantes,
  });
}

/// @nodoc
class __$$Step1DataImplCopyWithImpl<$Res>
    extends _$Step1DataCopyWithImpl<$Res, _$Step1DataImpl>
    implements _$$Step1DataImplCopyWith<$Res> {
  __$$Step1DataImplCopyWithImpl(
    _$Step1DataImpl _value,
    $Res Function(_$Step1DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step1Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? nombreTitular = freezed,
    Object? representantes = null,
  }) {
    return _then(
      _$Step1DataImpl(
        option: null == option
            ? _value.option
            : option // ignore: cast_nullable_to_non_nullable
                  as String,
        nombreTitular: freezed == nombreTitular
            ? _value.nombreTitular
            : nombreTitular // ignore: cast_nullable_to_non_nullable
                  as String?,
        representantes: null == representantes
            ? _value._representantes
            : representantes // ignore: cast_nullable_to_non_nullable
                  as List<Representante>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step1DataImpl implements _Step1Data {
  const _$Step1DataImpl({
    required this.option,
    this.nombreTitular,
    final List<Representante> representantes = const [],
  }) : _representantes = representantes;

  factory _$Step1DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step1DataImplFromJson(json);

  /// Opción seleccionada
  @override
  final String option;

  /// Nombre del titular (si aplica)
  @override
  final String? nombreTitular;

  /// Lista de representantes
  final List<Representante> _representantes;

  /// Lista de representantes
  @override
  @JsonKey()
  List<Representante> get representantes {
    if (_representantes is EqualUnmodifiableListView) return _representantes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_representantes);
  }

  @override
  String toString() {
    return 'Step1Data(option: $option, nombreTitular: $nombreTitular, representantes: $representantes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step1DataImpl &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.nombreTitular, nombreTitular) ||
                other.nombreTitular == nombreTitular) &&
            const DeepCollectionEquality().equals(
              other._representantes,
              _representantes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    option,
    nombreTitular,
    const DeepCollectionEquality().hash(_representantes),
  );

  /// Create a copy of Step1Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step1DataImplCopyWith<_$Step1DataImpl> get copyWith =>
      __$$Step1DataImplCopyWithImpl<_$Step1DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step1DataImplToJson(this);
  }
}

abstract class _Step1Data implements Step1Data {
  const factory _Step1Data({
    required final String option,
    final String? nombreTitular,
    final List<Representante> representantes,
  }) = _$Step1DataImpl;

  factory _Step1Data.fromJson(Map<String, dynamic> json) =
      _$Step1DataImpl.fromJson;

  /// Opción seleccionada
  @override
  String get option;

  /// Nombre del titular (si aplica)
  @override
  String? get nombreTitular;

  /// Lista de representantes
  @override
  List<Representante> get representantes;

  /// Create a copy of Step1Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step1DataImplCopyWith<_$Step1DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Representante _$RepresentanteFromJson(Map<String, dynamic> json) {
  return _Representante.fromJson(json);
}

/// @nodoc
mixin _$Representante {
  String get nombre => throw _privateConstructorUsedError;
  String get apellidoPaterno => throw _privateConstructorUsedError;
  String? get apellidoMaterno => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get telefono => throw _privateConstructorUsedError;

  /// Serializes this Representante to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Representante
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepresentanteCopyWith<Representante> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepresentanteCopyWith<$Res> {
  factory $RepresentanteCopyWith(
    Representante value,
    $Res Function(Representante) then,
  ) = _$RepresentanteCopyWithImpl<$Res, Representante>;
  @useResult
  $Res call({
    String nombre,
    String apellidoPaterno,
    String? apellidoMaterno,
    String email,
    String? telefono,
  });
}

/// @nodoc
class _$RepresentanteCopyWithImpl<$Res, $Val extends Representante>
    implements $RepresentanteCopyWith<$Res> {
  _$RepresentanteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Representante
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? apellidoPaterno = null,
    Object? apellidoMaterno = freezed,
    Object? email = null,
    Object? telefono = freezed,
  }) {
    return _then(
      _value.copyWith(
            nombre: null == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String,
            apellidoPaterno: null == apellidoPaterno
                ? _value.apellidoPaterno
                : apellidoPaterno // ignore: cast_nullable_to_non_nullable
                      as String,
            apellidoMaterno: freezed == apellidoMaterno
                ? _value.apellidoMaterno
                : apellidoMaterno // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            telefono: freezed == telefono
                ? _value.telefono
                : telefono // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RepresentanteImplCopyWith<$Res>
    implements $RepresentanteCopyWith<$Res> {
  factory _$$RepresentanteImplCopyWith(
    _$RepresentanteImpl value,
    $Res Function(_$RepresentanteImpl) then,
  ) = __$$RepresentanteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nombre,
    String apellidoPaterno,
    String? apellidoMaterno,
    String email,
    String? telefono,
  });
}

/// @nodoc
class __$$RepresentanteImplCopyWithImpl<$Res>
    extends _$RepresentanteCopyWithImpl<$Res, _$RepresentanteImpl>
    implements _$$RepresentanteImplCopyWith<$Res> {
  __$$RepresentanteImplCopyWithImpl(
    _$RepresentanteImpl _value,
    $Res Function(_$RepresentanteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Representante
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? apellidoPaterno = null,
    Object? apellidoMaterno = freezed,
    Object? email = null,
    Object? telefono = freezed,
  }) {
    return _then(
      _$RepresentanteImpl(
        nombre: null == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String,
        apellidoPaterno: null == apellidoPaterno
            ? _value.apellidoPaterno
            : apellidoPaterno // ignore: cast_nullable_to_non_nullable
                  as String,
        apellidoMaterno: freezed == apellidoMaterno
            ? _value.apellidoMaterno
            : apellidoMaterno // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        telefono: freezed == telefono
            ? _value.telefono
            : telefono // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RepresentanteImpl implements _Representante {
  const _$RepresentanteImpl({
    required this.nombre,
    required this.apellidoPaterno,
    this.apellidoMaterno,
    required this.email,
    this.telefono,
  });

  factory _$RepresentanteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepresentanteImplFromJson(json);

  @override
  final String nombre;
  @override
  final String apellidoPaterno;
  @override
  final String? apellidoMaterno;
  @override
  final String email;
  @override
  final String? telefono;

  @override
  String toString() {
    return 'Representante(nombre: $nombre, apellidoPaterno: $apellidoPaterno, apellidoMaterno: $apellidoMaterno, email: $email, telefono: $telefono)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepresentanteImpl &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellidoPaterno, apellidoPaterno) ||
                other.apellidoPaterno == apellidoPaterno) &&
            (identical(other.apellidoMaterno, apellidoMaterno) ||
                other.apellidoMaterno == apellidoMaterno) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    nombre,
    apellidoPaterno,
    apellidoMaterno,
    email,
    telefono,
  );

  /// Create a copy of Representante
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepresentanteImplCopyWith<_$RepresentanteImpl> get copyWith =>
      __$$RepresentanteImplCopyWithImpl<_$RepresentanteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepresentanteImplToJson(this);
  }
}

abstract class _Representante implements Representante {
  const factory _Representante({
    required final String nombre,
    required final String apellidoPaterno,
    final String? apellidoMaterno,
    required final String email,
    final String? telefono,
  }) = _$RepresentanteImpl;

  factory _Representante.fromJson(Map<String, dynamic> json) =
      _$RepresentanteImpl.fromJson;

  @override
  String get nombre;
  @override
  String get apellidoPaterno;
  @override
  String? get apellidoMaterno;
  @override
  String get email;
  @override
  String? get telefono;

  /// Create a copy of Representante
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepresentanteImplCopyWith<_$RepresentanteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step2Data _$Step2DataFromJson(Map<String, dynamic> json) {
  return _Step2Data.fromJson(json);
}

/// @nodoc
mixin _$Step2Data {
  /// IDs de archivos subidos
  List<String> get archivosIds => throw _privateConstructorUsedError;

  /// Metadata de archivos
  List<ArchivoMetadata> get archivosMetadata =>
      throw _privateConstructorUsedError;

  /// Serializes this Step2Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step2Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step2DataCopyWith<Step2Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step2DataCopyWith<$Res> {
  factory $Step2DataCopyWith(Step2Data value, $Res Function(Step2Data) then) =
      _$Step2DataCopyWithImpl<$Res, Step2Data>;
  @useResult
  $Res call({List<String> archivosIds, List<ArchivoMetadata> archivosMetadata});
}

/// @nodoc
class _$Step2DataCopyWithImpl<$Res, $Val extends Step2Data>
    implements $Step2DataCopyWith<$Res> {
  _$Step2DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step2Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? archivosIds = null, Object? archivosMetadata = null}) {
    return _then(
      _value.copyWith(
            archivosIds: null == archivosIds
                ? _value.archivosIds
                : archivosIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            archivosMetadata: null == archivosMetadata
                ? _value.archivosMetadata
                : archivosMetadata // ignore: cast_nullable_to_non_nullable
                      as List<ArchivoMetadata>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step2DataImplCopyWith<$Res>
    implements $Step2DataCopyWith<$Res> {
  factory _$$Step2DataImplCopyWith(
    _$Step2DataImpl value,
    $Res Function(_$Step2DataImpl) then,
  ) = __$$Step2DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> archivosIds, List<ArchivoMetadata> archivosMetadata});
}

/// @nodoc
class __$$Step2DataImplCopyWithImpl<$Res>
    extends _$Step2DataCopyWithImpl<$Res, _$Step2DataImpl>
    implements _$$Step2DataImplCopyWith<$Res> {
  __$$Step2DataImplCopyWithImpl(
    _$Step2DataImpl _value,
    $Res Function(_$Step2DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step2Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? archivosIds = null, Object? archivosMetadata = null}) {
    return _then(
      _$Step2DataImpl(
        archivosIds: null == archivosIds
            ? _value._archivosIds
            : archivosIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        archivosMetadata: null == archivosMetadata
            ? _value._archivosMetadata
            : archivosMetadata // ignore: cast_nullable_to_non_nullable
                  as List<ArchivoMetadata>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step2DataImpl implements _Step2Data {
  const _$Step2DataImpl({
    final List<String> archivosIds = const [],
    final List<ArchivoMetadata> archivosMetadata = const [],
  }) : _archivosIds = archivosIds,
       _archivosMetadata = archivosMetadata;

  factory _$Step2DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step2DataImplFromJson(json);

  /// IDs de archivos subidos
  final List<String> _archivosIds;

  /// IDs de archivos subidos
  @override
  @JsonKey()
  List<String> get archivosIds {
    if (_archivosIds is EqualUnmodifiableListView) return _archivosIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosIds);
  }

  /// Metadata de archivos
  final List<ArchivoMetadata> _archivosMetadata;

  /// Metadata de archivos
  @override
  @JsonKey()
  List<ArchivoMetadata> get archivosMetadata {
    if (_archivosMetadata is EqualUnmodifiableListView)
      return _archivosMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosMetadata);
  }

  @override
  String toString() {
    return 'Step2Data(archivosIds: $archivosIds, archivosMetadata: $archivosMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step2DataImpl &&
            const DeepCollectionEquality().equals(
              other._archivosIds,
              _archivosIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._archivosMetadata,
              _archivosMetadata,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_archivosIds),
    const DeepCollectionEquality().hash(_archivosMetadata),
  );

  /// Create a copy of Step2Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step2DataImplCopyWith<_$Step2DataImpl> get copyWith =>
      __$$Step2DataImplCopyWithImpl<_$Step2DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step2DataImplToJson(this);
  }
}

abstract class _Step2Data implements Step2Data {
  const factory _Step2Data({
    final List<String> archivosIds,
    final List<ArchivoMetadata> archivosMetadata,
  }) = _$Step2DataImpl;

  factory _Step2Data.fromJson(Map<String, dynamic> json) =
      _$Step2DataImpl.fromJson;

  /// IDs de archivos subidos
  @override
  List<String> get archivosIds;

  /// Metadata de archivos
  @override
  List<ArchivoMetadata> get archivosMetadata;

  /// Create a copy of Step2Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step2DataImplCopyWith<_$Step2DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArchivoMetadata _$ArchivoMetadataFromJson(Map<String, dynamic> json) {
  return _ArchivoMetadata.fromJson(json);
}

/// @nodoc
mixin _$ArchivoMetadata {
  String get nombre => throw _privateConstructorUsedError;
  int get tamano => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ArchivoMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchivoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchivoMetadataCopyWith<ArchivoMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchivoMetadataCopyWith<$Res> {
  factory $ArchivoMetadataCopyWith(
    ArchivoMetadata value,
    $Res Function(ArchivoMetadata) then,
  ) = _$ArchivoMetadataCopyWithImpl<$Res, ArchivoMetadata>;
  @useResult
  $Res call({String nombre, int tamano, String tipo, String? id});
}

/// @nodoc
class _$ArchivoMetadataCopyWithImpl<$Res, $Val extends ArchivoMetadata>
    implements $ArchivoMetadataCopyWith<$Res> {
  _$ArchivoMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchivoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? tamano = null,
    Object? tipo = null,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            nombre: null == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String,
            tamano: null == tamano
                ? _value.tamano
                : tamano // ignore: cast_nullable_to_non_nullable
                      as int,
            tipo: null == tipo
                ? _value.tipo
                : tipo // ignore: cast_nullable_to_non_nullable
                      as String,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArchivoMetadataImplCopyWith<$Res>
    implements $ArchivoMetadataCopyWith<$Res> {
  factory _$$ArchivoMetadataImplCopyWith(
    _$ArchivoMetadataImpl value,
    $Res Function(_$ArchivoMetadataImpl) then,
  ) = __$$ArchivoMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nombre, int tamano, String tipo, String? id});
}

/// @nodoc
class __$$ArchivoMetadataImplCopyWithImpl<$Res>
    extends _$ArchivoMetadataCopyWithImpl<$Res, _$ArchivoMetadataImpl>
    implements _$$ArchivoMetadataImplCopyWith<$Res> {
  __$$ArchivoMetadataImplCopyWithImpl(
    _$ArchivoMetadataImpl _value,
    $Res Function(_$ArchivoMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? tamano = null,
    Object? tipo = null,
    Object? id = freezed,
  }) {
    return _then(
      _$ArchivoMetadataImpl(
        nombre: null == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String,
        tamano: null == tamano
            ? _value.tamano
            : tamano // ignore: cast_nullable_to_non_nullable
                  as int,
        tipo: null == tipo
            ? _value.tipo
            : tipo // ignore: cast_nullable_to_non_nullable
                  as String,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArchivoMetadataImpl implements _ArchivoMetadata {
  const _$ArchivoMetadataImpl({
    required this.nombre,
    required this.tamano,
    required this.tipo,
    this.id,
  });

  factory _$ArchivoMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchivoMetadataImplFromJson(json);

  @override
  final String nombre;
  @override
  final int tamano;
  @override
  final String tipo;
  @override
  final String? id;

  @override
  String toString() {
    return 'ArchivoMetadata(nombre: $nombre, tamano: $tamano, tipo: $tipo, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchivoMetadataImpl &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tamano, tamano) || other.tamano == tamano) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nombre, tamano, tipo, id);

  /// Create a copy of ArchivoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchivoMetadataImplCopyWith<_$ArchivoMetadataImpl> get copyWith =>
      __$$ArchivoMetadataImplCopyWithImpl<_$ArchivoMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchivoMetadataImplToJson(this);
  }
}

abstract class _ArchivoMetadata implements ArchivoMetadata {
  const factory _ArchivoMetadata({
    required final String nombre,
    required final int tamano,
    required final String tipo,
    final String? id,
  }) = _$ArchivoMetadataImpl;

  factory _ArchivoMetadata.fromJson(Map<String, dynamic> json) =
      _$ArchivoMetadataImpl.fromJson;

  @override
  String get nombre;
  @override
  int get tamano;
  @override
  String get tipo;
  @override
  String? get id;

  /// Create a copy of ArchivoMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchivoMetadataImplCopyWith<_$ArchivoMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step3Data _$Step3DataFromJson(Map<String, dynamic> json) {
  return _Step3Data.fromJson(json);
}

/// @nodoc
mixin _$Step3Data {
  /// Autoridades agregadas
  List<AutoridadAgregada> get autoridadesAgregadas =>
      throw _privateConstructorUsedError;

  /// Otras autoridades
  List<OtraAutoridad> get otrasAutoridades =>
      throw _privateConstructorUsedError;

  /// Serializes this Step3Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step3Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step3DataCopyWith<Step3Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step3DataCopyWith<$Res> {
  factory $Step3DataCopyWith(Step3Data value, $Res Function(Step3Data) then) =
      _$Step3DataCopyWithImpl<$Res, Step3Data>;
  @useResult
  $Res call({
    List<AutoridadAgregada> autoridadesAgregadas,
    List<OtraAutoridad> otrasAutoridades,
  });
}

/// @nodoc
class _$Step3DataCopyWithImpl<$Res, $Val extends Step3Data>
    implements $Step3DataCopyWith<$Res> {
  _$Step3DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step3Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoridadesAgregadas = null,
    Object? otrasAutoridades = null,
  }) {
    return _then(
      _value.copyWith(
            autoridadesAgregadas: null == autoridadesAgregadas
                ? _value.autoridadesAgregadas
                : autoridadesAgregadas // ignore: cast_nullable_to_non_nullable
                      as List<AutoridadAgregada>,
            otrasAutoridades: null == otrasAutoridades
                ? _value.otrasAutoridades
                : otrasAutoridades // ignore: cast_nullable_to_non_nullable
                      as List<OtraAutoridad>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step3DataImplCopyWith<$Res>
    implements $Step3DataCopyWith<$Res> {
  factory _$$Step3DataImplCopyWith(
    _$Step3DataImpl value,
    $Res Function(_$Step3DataImpl) then,
  ) = __$$Step3DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AutoridadAgregada> autoridadesAgregadas,
    List<OtraAutoridad> otrasAutoridades,
  });
}

/// @nodoc
class __$$Step3DataImplCopyWithImpl<$Res>
    extends _$Step3DataCopyWithImpl<$Res, _$Step3DataImpl>
    implements _$$Step3DataImplCopyWith<$Res> {
  __$$Step3DataImplCopyWithImpl(
    _$Step3DataImpl _value,
    $Res Function(_$Step3DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step3Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoridadesAgregadas = null,
    Object? otrasAutoridades = null,
  }) {
    return _then(
      _$Step3DataImpl(
        autoridadesAgregadas: null == autoridadesAgregadas
            ? _value._autoridadesAgregadas
            : autoridadesAgregadas // ignore: cast_nullable_to_non_nullable
                  as List<AutoridadAgregada>,
        otrasAutoridades: null == otrasAutoridades
            ? _value._otrasAutoridades
            : otrasAutoridades // ignore: cast_nullable_to_non_nullable
                  as List<OtraAutoridad>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step3DataImpl implements _Step3Data {
  const _$Step3DataImpl({
    final List<AutoridadAgregada> autoridadesAgregadas = const [],
    final List<OtraAutoridad> otrasAutoridades = const [],
  }) : _autoridadesAgregadas = autoridadesAgregadas,
       _otrasAutoridades = otrasAutoridades;

  factory _$Step3DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step3DataImplFromJson(json);

  /// Autoridades agregadas
  final List<AutoridadAgregada> _autoridadesAgregadas;

  /// Autoridades agregadas
  @override
  @JsonKey()
  List<AutoridadAgregada> get autoridadesAgregadas {
    if (_autoridadesAgregadas is EqualUnmodifiableListView)
      return _autoridadesAgregadas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_autoridadesAgregadas);
  }

  /// Otras autoridades
  final List<OtraAutoridad> _otrasAutoridades;

  /// Otras autoridades
  @override
  @JsonKey()
  List<OtraAutoridad> get otrasAutoridades {
    if (_otrasAutoridades is EqualUnmodifiableListView)
      return _otrasAutoridades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otrasAutoridades);
  }

  @override
  String toString() {
    return 'Step3Data(autoridadesAgregadas: $autoridadesAgregadas, otrasAutoridades: $otrasAutoridades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step3DataImpl &&
            const DeepCollectionEquality().equals(
              other._autoridadesAgregadas,
              _autoridadesAgregadas,
            ) &&
            const DeepCollectionEquality().equals(
              other._otrasAutoridades,
              _otrasAutoridades,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_autoridadesAgregadas),
    const DeepCollectionEquality().hash(_otrasAutoridades),
  );

  /// Create a copy of Step3Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step3DataImplCopyWith<_$Step3DataImpl> get copyWith =>
      __$$Step3DataImplCopyWithImpl<_$Step3DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step3DataImplToJson(this);
  }
}

abstract class _Step3Data implements Step3Data {
  const factory _Step3Data({
    final List<AutoridadAgregada> autoridadesAgregadas,
    final List<OtraAutoridad> otrasAutoridades,
  }) = _$Step3DataImpl;

  factory _Step3Data.fromJson(Map<String, dynamic> json) =
      _$Step3DataImpl.fromJson;

  /// Autoridades agregadas
  @override
  List<AutoridadAgregada> get autoridadesAgregadas;

  /// Otras autoridades
  @override
  List<OtraAutoridad> get otrasAutoridades;

  /// Create a copy of Step3Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step3DataImplCopyWith<_$Step3DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoridadAgregada _$AutoridadAgregadaFromJson(Map<String, dynamic> json) {
  return _AutoridadAgregada.fromJson(json);
}

/// @nodoc
mixin _$AutoridadAgregada {
  String get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;

  /// Serializes this AutoridadAgregada to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoridadAgregada
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoridadAgregadaCopyWith<AutoridadAgregada> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoridadAgregadaCopyWith<$Res> {
  factory $AutoridadAgregadaCopyWith(
    AutoridadAgregada value,
    $Res Function(AutoridadAgregada) then,
  ) = _$AutoridadAgregadaCopyWithImpl<$Res, AutoridadAgregada>;
  @useResult
  $Res call({String id, String nombre, String tipo});
}

/// @nodoc
class _$AutoridadAgregadaCopyWithImpl<$Res, $Val extends AutoridadAgregada>
    implements $AutoridadAgregadaCopyWith<$Res> {
  _$AutoridadAgregadaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoridadAgregada
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nombre = null, Object? tipo = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nombre: null == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String,
            tipo: null == tipo
                ? _value.tipo
                : tipo // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutoridadAgregadaImplCopyWith<$Res>
    implements $AutoridadAgregadaCopyWith<$Res> {
  factory _$$AutoridadAgregadaImplCopyWith(
    _$AutoridadAgregadaImpl value,
    $Res Function(_$AutoridadAgregadaImpl) then,
  ) = __$$AutoridadAgregadaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nombre, String tipo});
}

/// @nodoc
class __$$AutoridadAgregadaImplCopyWithImpl<$Res>
    extends _$AutoridadAgregadaCopyWithImpl<$Res, _$AutoridadAgregadaImpl>
    implements _$$AutoridadAgregadaImplCopyWith<$Res> {
  __$$AutoridadAgregadaImplCopyWithImpl(
    _$AutoridadAgregadaImpl _value,
    $Res Function(_$AutoridadAgregadaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutoridadAgregada
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nombre = null, Object? tipo = null}) {
    return _then(
      _$AutoridadAgregadaImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nombre: null == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String,
        tipo: null == tipo
            ? _value.tipo
            : tipo // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoridadAgregadaImpl implements _AutoridadAgregada {
  const _$AutoridadAgregadaImpl({
    required this.id,
    required this.nombre,
    required this.tipo,
  });

  factory _$AutoridadAgregadaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoridadAgregadaImplFromJson(json);

  @override
  final String id;
  @override
  final String nombre;
  @override
  final String tipo;

  @override
  String toString() {
    return 'AutoridadAgregada(id: $id, nombre: $nombre, tipo: $tipo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoridadAgregadaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tipo, tipo) || other.tipo == tipo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nombre, tipo);

  /// Create a copy of AutoridadAgregada
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoridadAgregadaImplCopyWith<_$AutoridadAgregadaImpl> get copyWith =>
      __$$AutoridadAgregadaImplCopyWithImpl<_$AutoridadAgregadaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoridadAgregadaImplToJson(this);
  }
}

abstract class _AutoridadAgregada implements AutoridadAgregada {
  const factory _AutoridadAgregada({
    required final String id,
    required final String nombre,
    required final String tipo,
  }) = _$AutoridadAgregadaImpl;

  factory _AutoridadAgregada.fromJson(Map<String, dynamic> json) =
      _$AutoridadAgregadaImpl.fromJson;

  @override
  String get id;
  @override
  String get nombre;
  @override
  String get tipo;

  /// Create a copy of AutoridadAgregada
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoridadAgregadaImplCopyWith<_$AutoridadAgregadaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtraAutoridad _$OtraAutoridadFromJson(Map<String, dynamic> json) {
  return _OtraAutoridad.fromJson(json);
}

/// @nodoc
mixin _$OtraAutoridad {
  String get nombre => throw _privateConstructorUsedError;
  String? get descripcion => throw _privateConstructorUsedError;

  /// Serializes this OtraAutoridad to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtraAutoridad
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtraAutoridadCopyWith<OtraAutoridad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtraAutoridadCopyWith<$Res> {
  factory $OtraAutoridadCopyWith(
    OtraAutoridad value,
    $Res Function(OtraAutoridad) then,
  ) = _$OtraAutoridadCopyWithImpl<$Res, OtraAutoridad>;
  @useResult
  $Res call({String nombre, String? descripcion});
}

/// @nodoc
class _$OtraAutoridadCopyWithImpl<$Res, $Val extends OtraAutoridad>
    implements $OtraAutoridadCopyWith<$Res> {
  _$OtraAutoridadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtraAutoridad
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nombre = null, Object? descripcion = freezed}) {
    return _then(
      _value.copyWith(
            nombre: null == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String,
            descripcion: freezed == descripcion
                ? _value.descripcion
                : descripcion // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OtraAutoridadImplCopyWith<$Res>
    implements $OtraAutoridadCopyWith<$Res> {
  factory _$$OtraAutoridadImplCopyWith(
    _$OtraAutoridadImpl value,
    $Res Function(_$OtraAutoridadImpl) then,
  ) = __$$OtraAutoridadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nombre, String? descripcion});
}

/// @nodoc
class __$$OtraAutoridadImplCopyWithImpl<$Res>
    extends _$OtraAutoridadCopyWithImpl<$Res, _$OtraAutoridadImpl>
    implements _$$OtraAutoridadImplCopyWith<$Res> {
  __$$OtraAutoridadImplCopyWithImpl(
    _$OtraAutoridadImpl _value,
    $Res Function(_$OtraAutoridadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtraAutoridad
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nombre = null, Object? descripcion = freezed}) {
    return _then(
      _$OtraAutoridadImpl(
        nombre: null == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String,
        descripcion: freezed == descripcion
            ? _value.descripcion
            : descripcion // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OtraAutoridadImpl implements _OtraAutoridad {
  const _$OtraAutoridadImpl({required this.nombre, this.descripcion});

  factory _$OtraAutoridadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtraAutoridadImplFromJson(json);

  @override
  final String nombre;
  @override
  final String? descripcion;

  @override
  String toString() {
    return 'OtraAutoridad(nombre: $nombre, descripcion: $descripcion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtraAutoridadImpl &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nombre, descripcion);

  /// Create a copy of OtraAutoridad
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtraAutoridadImplCopyWith<_$OtraAutoridadImpl> get copyWith =>
      __$$OtraAutoridadImplCopyWithImpl<_$OtraAutoridadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtraAutoridadImplToJson(this);
  }
}

abstract class _OtraAutoridad implements OtraAutoridad {
  const factory _OtraAutoridad({
    required final String nombre,
    final String? descripcion,
  }) = _$OtraAutoridadImpl;

  factory _OtraAutoridad.fromJson(Map<String, dynamic> json) =
      _$OtraAutoridadImpl.fromJson;

  @override
  String get nombre;
  @override
  String? get descripcion;

  /// Create a copy of OtraAutoridad
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtraAutoridadImplCopyWith<_$OtraAutoridadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step4Data _$Step4DataFromJson(Map<String, dynamic> json) {
  return _Step4Data.fromJson(json);
}

/// @nodoc
mixin _$Step4Data {
  /// Descripción de la impugnación
  String get descripcion => throw _privateConstructorUsedError;

  /// IDs de archivos de evidencia
  List<String> get archivosIds => throw _privateConstructorUsedError;

  /// Metadata de archivos
  List<ArchivoMetadata> get archivosMetadata =>
      throw _privateConstructorUsedError;

  /// Serializes this Step4Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step4Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step4DataCopyWith<Step4Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step4DataCopyWith<$Res> {
  factory $Step4DataCopyWith(Step4Data value, $Res Function(Step4Data) then) =
      _$Step4DataCopyWithImpl<$Res, Step4Data>;
  @useResult
  $Res call({
    String descripcion,
    List<String> archivosIds,
    List<ArchivoMetadata> archivosMetadata,
  });
}

/// @nodoc
class _$Step4DataCopyWithImpl<$Res, $Val extends Step4Data>
    implements $Step4DataCopyWith<$Res> {
  _$Step4DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step4Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descripcion = null,
    Object? archivosIds = null,
    Object? archivosMetadata = null,
  }) {
    return _then(
      _value.copyWith(
            descripcion: null == descripcion
                ? _value.descripcion
                : descripcion // ignore: cast_nullable_to_non_nullable
                      as String,
            archivosIds: null == archivosIds
                ? _value.archivosIds
                : archivosIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            archivosMetadata: null == archivosMetadata
                ? _value.archivosMetadata
                : archivosMetadata // ignore: cast_nullable_to_non_nullable
                      as List<ArchivoMetadata>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step4DataImplCopyWith<$Res>
    implements $Step4DataCopyWith<$Res> {
  factory _$$Step4DataImplCopyWith(
    _$Step4DataImpl value,
    $Res Function(_$Step4DataImpl) then,
  ) = __$$Step4DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String descripcion,
    List<String> archivosIds,
    List<ArchivoMetadata> archivosMetadata,
  });
}

/// @nodoc
class __$$Step4DataImplCopyWithImpl<$Res>
    extends _$Step4DataCopyWithImpl<$Res, _$Step4DataImpl>
    implements _$$Step4DataImplCopyWith<$Res> {
  __$$Step4DataImplCopyWithImpl(
    _$Step4DataImpl _value,
    $Res Function(_$Step4DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step4Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descripcion = null,
    Object? archivosIds = null,
    Object? archivosMetadata = null,
  }) {
    return _then(
      _$Step4DataImpl(
        descripcion: null == descripcion
            ? _value.descripcion
            : descripcion // ignore: cast_nullable_to_non_nullable
                  as String,
        archivosIds: null == archivosIds
            ? _value._archivosIds
            : archivosIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        archivosMetadata: null == archivosMetadata
            ? _value._archivosMetadata
            : archivosMetadata // ignore: cast_nullable_to_non_nullable
                  as List<ArchivoMetadata>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step4DataImpl implements _Step4Data {
  const _$Step4DataImpl({
    required this.descripcion,
    final List<String> archivosIds = const [],
    final List<ArchivoMetadata> archivosMetadata = const [],
  }) : _archivosIds = archivosIds,
       _archivosMetadata = archivosMetadata;

  factory _$Step4DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step4DataImplFromJson(json);

  /// Descripción de la impugnación
  @override
  final String descripcion;

  /// IDs de archivos de evidencia
  final List<String> _archivosIds;

  /// IDs de archivos de evidencia
  @override
  @JsonKey()
  List<String> get archivosIds {
    if (_archivosIds is EqualUnmodifiableListView) return _archivosIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosIds);
  }

  /// Metadata de archivos
  final List<ArchivoMetadata> _archivosMetadata;

  /// Metadata de archivos
  @override
  @JsonKey()
  List<ArchivoMetadata> get archivosMetadata {
    if (_archivosMetadata is EqualUnmodifiableListView)
      return _archivosMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosMetadata);
  }

  @override
  String toString() {
    return 'Step4Data(descripcion: $descripcion, archivosIds: $archivosIds, archivosMetadata: $archivosMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step4DataImpl &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            const DeepCollectionEquality().equals(
              other._archivosIds,
              _archivosIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._archivosMetadata,
              _archivosMetadata,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    descripcion,
    const DeepCollectionEquality().hash(_archivosIds),
    const DeepCollectionEquality().hash(_archivosMetadata),
  );

  /// Create a copy of Step4Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step4DataImplCopyWith<_$Step4DataImpl> get copyWith =>
      __$$Step4DataImplCopyWithImpl<_$Step4DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step4DataImplToJson(this);
  }
}

abstract class _Step4Data implements Step4Data {
  const factory _Step4Data({
    required final String descripcion,
    final List<String> archivosIds,
    final List<ArchivoMetadata> archivosMetadata,
  }) = _$Step4DataImpl;

  factory _Step4Data.fromJson(Map<String, dynamic> json) =
      _$Step4DataImpl.fromJson;

  /// Descripción de la impugnación
  @override
  String get descripcion;

  /// IDs de archivos de evidencia
  @override
  List<String> get archivosIds;

  /// Metadata de archivos
  @override
  List<ArchivoMetadata> get archivosMetadata;

  /// Create a copy of Step4Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step4DataImplCopyWith<_$Step4DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Step5Data _$Step5DataFromJson(Map<String, dynamic> json) {
  return _Step5Data.fromJson(json);
}

/// @nodoc
mixin _$Step5Data {
  /// IDs de archivos subidos
  List<String> get archivosIds => throw _privateConstructorUsedError;

  /// Metadata de archivos
  List<ArchivoMetadata> get archivosMetadata =>
      throw _privateConstructorUsedError;

  /// Serializes this Step5Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Step5Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Step5DataCopyWith<Step5Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Step5DataCopyWith<$Res> {
  factory $Step5DataCopyWith(Step5Data value, $Res Function(Step5Data) then) =
      _$Step5DataCopyWithImpl<$Res, Step5Data>;
  @useResult
  $Res call({List<String> archivosIds, List<ArchivoMetadata> archivosMetadata});
}

/// @nodoc
class _$Step5DataCopyWithImpl<$Res, $Val extends Step5Data>
    implements $Step5DataCopyWith<$Res> {
  _$Step5DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Step5Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? archivosIds = null, Object? archivosMetadata = null}) {
    return _then(
      _value.copyWith(
            archivosIds: null == archivosIds
                ? _value.archivosIds
                : archivosIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            archivosMetadata: null == archivosMetadata
                ? _value.archivosMetadata
                : archivosMetadata // ignore: cast_nullable_to_non_nullable
                      as List<ArchivoMetadata>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Step5DataImplCopyWith<$Res>
    implements $Step5DataCopyWith<$Res> {
  factory _$$Step5DataImplCopyWith(
    _$Step5DataImpl value,
    $Res Function(_$Step5DataImpl) then,
  ) = __$$Step5DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> archivosIds, List<ArchivoMetadata> archivosMetadata});
}

/// @nodoc
class __$$Step5DataImplCopyWithImpl<$Res>
    extends _$Step5DataCopyWithImpl<$Res, _$Step5DataImpl>
    implements _$$Step5DataImplCopyWith<$Res> {
  __$$Step5DataImplCopyWithImpl(
    _$Step5DataImpl _value,
    $Res Function(_$Step5DataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Step5Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? archivosIds = null, Object? archivosMetadata = null}) {
    return _then(
      _$Step5DataImpl(
        archivosIds: null == archivosIds
            ? _value._archivosIds
            : archivosIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        archivosMetadata: null == archivosMetadata
            ? _value._archivosMetadata
            : archivosMetadata // ignore: cast_nullable_to_non_nullable
                  as List<ArchivoMetadata>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Step5DataImpl implements _Step5Data {
  const _$Step5DataImpl({
    final List<String> archivosIds = const [],
    final List<ArchivoMetadata> archivosMetadata = const [],
  }) : _archivosIds = archivosIds,
       _archivosMetadata = archivosMetadata;

  factory _$Step5DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Step5DataImplFromJson(json);

  /// IDs de archivos subidos
  final List<String> _archivosIds;

  /// IDs de archivos subidos
  @override
  @JsonKey()
  List<String> get archivosIds {
    if (_archivosIds is EqualUnmodifiableListView) return _archivosIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosIds);
  }

  /// Metadata de archivos
  final List<ArchivoMetadata> _archivosMetadata;

  /// Metadata de archivos
  @override
  @JsonKey()
  List<ArchivoMetadata> get archivosMetadata {
    if (_archivosMetadata is EqualUnmodifiableListView)
      return _archivosMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivosMetadata);
  }

  @override
  String toString() {
    return 'Step5Data(archivosIds: $archivosIds, archivosMetadata: $archivosMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Step5DataImpl &&
            const DeepCollectionEquality().equals(
              other._archivosIds,
              _archivosIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._archivosMetadata,
              _archivosMetadata,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_archivosIds),
    const DeepCollectionEquality().hash(_archivosMetadata),
  );

  /// Create a copy of Step5Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Step5DataImplCopyWith<_$Step5DataImpl> get copyWith =>
      __$$Step5DataImplCopyWithImpl<_$Step5DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Step5DataImplToJson(this);
  }
}

abstract class _Step5Data implements Step5Data {
  const factory _Step5Data({
    final List<String> archivosIds,
    final List<ArchivoMetadata> archivosMetadata,
  }) = _$Step5DataImpl;

  factory _Step5Data.fromJson(Map<String, dynamic> json) =
      _$Step5DataImpl.fromJson;

  /// IDs de archivos subidos
  @override
  List<String> get archivosIds;

  /// Metadata de archivos
  @override
  List<ArchivoMetadata> get archivosMetadata;

  /// Create a copy of Step5Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Step5DataImplCopyWith<_$Step5DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
