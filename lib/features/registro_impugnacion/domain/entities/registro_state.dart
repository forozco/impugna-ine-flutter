import 'package:freezed_annotation/freezed_annotation.dart';

part 'registro_state.freezed.dart';
part 'registro_state.g.dart';

/// Estado principal del wizard de registro de impugnación
@freezed
class RegistroState with _$RegistroState {
  const factory RegistroState({
    /// Paso actual del wizard (0-5)
    @Default(0) int currentStep,

    /// Datos de cada paso del wizard
    Step0Data? step0Data,
    Step1Data? step1Data,
    Step2Data? step2Data,
    Step3Data? step3Data,
    Step4Data? step4Data,
    Step5Data? step5Data,

    /// Validez de cada paso
    @Default({}) Map<int, bool> stepsValidity,

    /// Estado de envío
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? errorMessage,
  }) = _RegistroState;

  factory RegistroState.fromJson(Map<String, dynamic> json) =>
      _$RegistroStateFromJson(json);
}

/// Step 0: Actores - Quién está impugnando
@freezed
class Step0Data with _$Step0Data {
  const factory Step0Data({
    /// Tipo de registrante: 'titular' o 'representantes'
    required String option,

    /// Tipo de impugnación seleccionada
    String? tipoImpugnacion,

    /// Folio del expediente (opcional)
    String? folio,
  }) = _Step0Data;

  factory Step0Data.fromJson(Map<String, dynamic> json) =>
      _$Step0DataFromJson(json);
}

/// Step 1: Representante - Datos del representante
@freezed
class Step1Data with _$Step1Data {
  const factory Step1Data({
    /// Opción seleccionada
    required String option,

    /// Nombre del titular (si aplica)
    String? nombreTitular,

    /// Lista de representantes
    @Default([]) List<Representante> representantes,
  }) = _Step1Data;

  factory Step1Data.fromJson(Map<String, dynamic> json) =>
      _$Step1DataFromJson(json);
}

@freezed
class Representante with _$Representante {
  const factory Representante({
    required String nombre,
    required String apellidoPaterno,
    String? apellidoMaterno,
    required String email,
    String? telefono,
  }) = _Representante;

  factory Representante.fromJson(Map<String, dynamic> json) =>
      _$RepresentanteFromJson(json);
}

/// Step 2: Personalidad - Acreditación de personalidad legal
@freezed
class Step2Data with _$Step2Data {
  const factory Step2Data({
    /// IDs de archivos subidos
    @Default([]) List<String> archivosIds,

    /// Metadata de archivos
    @Default([]) List<ArchivoMetadata> archivosMetadata,
  }) = _Step2Data;

  factory Step2Data.fromJson(Map<String, dynamic> json) =>
      _$Step2DataFromJson(json);
}

@freezed
class ArchivoMetadata with _$ArchivoMetadata {
  const factory ArchivoMetadata({
    required String nombre,
    required int tamano,
    required String tipo,
    String? id,
  }) = _ArchivoMetadata;

  factory ArchivoMetadata.fromJson(Map<String, dynamic> json) =>
      _$ArchivoMetadataFromJson(json);
}

/// Step 3: Autoridad - Autoridad responsable
@freezed
class Step3Data with _$Step3Data {
  const factory Step3Data({
    /// Autoridades agregadas
    @Default([]) List<AutoridadAgregada> autoridadesAgregadas,

    /// Otras autoridades
    @Default([]) List<OtraAutoridad> otrasAutoridades,
  }) = _Step3Data;

  factory Step3Data.fromJson(Map<String, dynamic> json) =>
      _$Step3DataFromJson(json);
}

@freezed
class AutoridadAgregada with _$AutoridadAgregada {
  const factory AutoridadAgregada({
    required String id,
    required String nombre,
    required String tipo,
  }) = _AutoridadAgregada;

  factory AutoridadAgregada.fromJson(Map<String, dynamic> json) =>
      _$AutoridadAgregadaFromJson(json);
}

@freezed
class OtraAutoridad with _$OtraAutoridad {
  const factory OtraAutoridad({required String nombre, String? descripcion}) =
      _OtraAutoridad;

  factory OtraAutoridad.fromJson(Map<String, dynamic> json) =>
      _$OtraAutoridadFromJson(json);
}

/// Step 4: Impugnación - Hechos y agravios
@freezed
class Step4Data with _$Step4Data {
  const factory Step4Data({
    /// Descripción de la impugnación
    required String descripcion,

    /// IDs de archivos de evidencia
    @Default([]) List<String> archivosIds,

    /// Metadata de archivos
    @Default([]) List<ArchivoMetadata> archivosMetadata,
  }) = _Step4Data;

  factory Step4Data.fromJson(Map<String, dynamic> json) =>
      _$Step4DataFromJson(json);
}

/// Step 5: Evidencia - Pruebas y anexos
@freezed
class Step5Data with _$Step5Data {
  const factory Step5Data({
    /// IDs de archivos subidos
    @Default([]) List<String> archivosIds,

    /// Metadata de archivos
    @Default([]) List<ArchivoMetadata> archivosMetadata,
  }) = _Step5Data;

  factory Step5Data.fromJson(Map<String, dynamic> json) =>
      _$Step5DataFromJson(json);
}
