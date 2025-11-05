// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistroStateImpl _$$RegistroStateImplFromJson(Map<String, dynamic> json) =>
    _$RegistroStateImpl(
      currentStep: (json['currentStep'] as num?)?.toInt() ?? 0,
      step0Data: json['step0Data'] == null
          ? null
          : Step0Data.fromJson(json['step0Data'] as Map<String, dynamic>),
      step1Data: json['step1Data'] == null
          ? null
          : Step1Data.fromJson(json['step1Data'] as Map<String, dynamic>),
      step2Data: json['step2Data'] == null
          ? null
          : Step2Data.fromJson(json['step2Data'] as Map<String, dynamic>),
      step3Data: json['step3Data'] == null
          ? null
          : Step3Data.fromJson(json['step3Data'] as Map<String, dynamic>),
      step4Data: json['step4Data'] == null
          ? null
          : Step4Data.fromJson(json['step4Data'] as Map<String, dynamic>),
      step5Data: json['step5Data'] == null
          ? null
          : Step5Data.fromJson(json['step5Data'] as Map<String, dynamic>),
      stepsValidity:
          (json['stepsValidity'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as bool),
          ) ??
          const {},
      isSubmitting: json['isSubmitting'] as bool? ?? false,
      isSuccess: json['isSuccess'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$RegistroStateImplToJson(_$RegistroStateImpl instance) =>
    <String, dynamic>{
      'currentStep': instance.currentStep,
      'step0Data': instance.step0Data,
      'step1Data': instance.step1Data,
      'step2Data': instance.step2Data,
      'step3Data': instance.step3Data,
      'step4Data': instance.step4Data,
      'step5Data': instance.step5Data,
      'stepsValidity': instance.stepsValidity.map(
        (k, e) => MapEntry(k.toString(), e),
      ),
      'isSubmitting': instance.isSubmitting,
      'isSuccess': instance.isSuccess,
      'errorMessage': instance.errorMessage,
    };

_$Step0DataImpl _$$Step0DataImplFromJson(Map<String, dynamic> json) =>
    _$Step0DataImpl(
      option: json['option'] as String,
      tipoImpugnacion: json['tipoImpugnacion'] as String?,
      folio: json['folio'] as String?,
    );

Map<String, dynamic> _$$Step0DataImplToJson(_$Step0DataImpl instance) =>
    <String, dynamic>{
      'option': instance.option,
      'tipoImpugnacion': instance.tipoImpugnacion,
      'folio': instance.folio,
    };

_$Step1DataImpl _$$Step1DataImplFromJson(Map<String, dynamic> json) =>
    _$Step1DataImpl(
      option: json['option'] as String,
      nombreTitular: json['nombreTitular'] as String?,
      representantes:
          (json['representantes'] as List<dynamic>?)
              ?.map((e) => Representante.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Step1DataImplToJson(_$Step1DataImpl instance) =>
    <String, dynamic>{
      'option': instance.option,
      'nombreTitular': instance.nombreTitular,
      'representantes': instance.representantes,
    };

_$RepresentanteImpl _$$RepresentanteImplFromJson(Map<String, dynamic> json) =>
    _$RepresentanteImpl(
      nombre: json['nombre'] as String,
      apellidoPaterno: json['apellidoPaterno'] as String,
      apellidoMaterno: json['apellidoMaterno'] as String?,
      email: json['email'] as String,
      telefono: json['telefono'] as String?,
    );

Map<String, dynamic> _$$RepresentanteImplToJson(_$RepresentanteImpl instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'apellidoPaterno': instance.apellidoPaterno,
      'apellidoMaterno': instance.apellidoMaterno,
      'email': instance.email,
      'telefono': instance.telefono,
    };

_$Step2DataImpl _$$Step2DataImplFromJson(Map<String, dynamic> json) =>
    _$Step2DataImpl(
      archivosIds:
          (json['archivosIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      archivosMetadata:
          (json['archivosMetadata'] as List<dynamic>?)
              ?.map((e) => ArchivoMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Step2DataImplToJson(_$Step2DataImpl instance) =>
    <String, dynamic>{
      'archivosIds': instance.archivosIds,
      'archivosMetadata': instance.archivosMetadata,
    };

_$ArchivoMetadataImpl _$$ArchivoMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$ArchivoMetadataImpl(
  nombre: json['nombre'] as String,
  tamano: (json['tamano'] as num).toInt(),
  tipo: json['tipo'] as String,
  id: json['id'] as String?,
);

Map<String, dynamic> _$$ArchivoMetadataImplToJson(
  _$ArchivoMetadataImpl instance,
) => <String, dynamic>{
  'nombre': instance.nombre,
  'tamano': instance.tamano,
  'tipo': instance.tipo,
  'id': instance.id,
};

_$Step3DataImpl _$$Step3DataImplFromJson(Map<String, dynamic> json) =>
    _$Step3DataImpl(
      autoridadesAgregadas:
          (json['autoridadesAgregadas'] as List<dynamic>?)
              ?.map(
                (e) => AutoridadAgregada.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      otrasAutoridades:
          (json['otrasAutoridades'] as List<dynamic>?)
              ?.map((e) => OtraAutoridad.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Step3DataImplToJson(_$Step3DataImpl instance) =>
    <String, dynamic>{
      'autoridadesAgregadas': instance.autoridadesAgregadas,
      'otrasAutoridades': instance.otrasAutoridades,
    };

_$AutoridadAgregadaImpl _$$AutoridadAgregadaImplFromJson(
  Map<String, dynamic> json,
) => _$AutoridadAgregadaImpl(
  id: json['id'] as String,
  nombre: json['nombre'] as String,
  tipo: json['tipo'] as String,
);

Map<String, dynamic> _$$AutoridadAgregadaImplToJson(
  _$AutoridadAgregadaImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nombre': instance.nombre,
  'tipo': instance.tipo,
};

_$OtraAutoridadImpl _$$OtraAutoridadImplFromJson(Map<String, dynamic> json) =>
    _$OtraAutoridadImpl(
      nombre: json['nombre'] as String,
      descripcion: json['descripcion'] as String?,
    );

Map<String, dynamic> _$$OtraAutoridadImplToJson(_$OtraAutoridadImpl instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
    };

_$Step4DataImpl _$$Step4DataImplFromJson(Map<String, dynamic> json) =>
    _$Step4DataImpl(
      descripcion: json['descripcion'] as String,
      archivosIds:
          (json['archivosIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      archivosMetadata:
          (json['archivosMetadata'] as List<dynamic>?)
              ?.map((e) => ArchivoMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Step4DataImplToJson(_$Step4DataImpl instance) =>
    <String, dynamic>{
      'descripcion': instance.descripcion,
      'archivosIds': instance.archivosIds,
      'archivosMetadata': instance.archivosMetadata,
    };

_$Step5DataImpl _$$Step5DataImplFromJson(Map<String, dynamic> json) =>
    _$Step5DataImpl(
      archivosIds:
          (json['archivosIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      archivosMetadata:
          (json['archivosMetadata'] as List<dynamic>?)
              ?.map((e) => ArchivoMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Step5DataImplToJson(_$Step5DataImpl instance) =>
    <String, dynamic>{
      'archivosIds': instance.archivosIds,
      'archivosMetadata': instance.archivosMetadata,
    };
