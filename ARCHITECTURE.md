# ImpugnaINE Mobile - Arquitectura del Proyecto

## Stack Tecnológico
- **Flutter 3.35+**
- **Dart 3.9+**
- **Riverpod** - State management
- **Go Router** - Navigation
- **Freezed** - Immutable models
- **Dio** - HTTP client
- **Hive** - Local storage
- **File Picker** - File selection
- **PDF Viewer** - Document preview

## Arquitectura: Clean Architecture + Feature-First

```
lib/
├── core/                          # Funcionalidades compartidas
│   ├── theme/                     # Tema INE (colores, tipografías)
│   ├── constants/                 # Constantes globales
│   ├── utils/                     # Utilidades
│   ├── network/                   # Cliente HTTP (Dio)
│   ├── storage/                   # Almacenamiento local (Hive)
│   └── router/                    # Configuración de rutas
│
├── shared/                        # Widgets y lógica compartida
│   ├── widgets/                   # Widgets reutilizables
│   │   ├── buttons/
│   │   ├── inputs/
│   │   ├── file_uploader/
│   │   ├── stepper/
│   │   └── modals/
│   ├── providers/                 # Providers globales
│   └── models/                    # Modelos compartidos
│
├── features/                      # Características por módulo
│   ├── auth/                      # Autenticación
│   │   ├── data/
│   │   │   ├── models/           # DTOs y mappers
│   │   │   ├── repositories/     # Implementación de repos
│   │   │   └── datasources/      # API calls
│   │   ├── domain/
│   │   │   ├── entities/         # Modelos de negocio
│   │   │   ├── repositories/     # Contratos de repos
│   │   │   └── usecases/         # Casos de uso
│   │   └── presentation/
│   │       ├── screens/          # Pantallas
│   │       ├── widgets/          # Widgets específicos
│   │       └── providers/        # State providers
│   │
│   ├── home/                      # Pantalla principal
│   ├── registro_usuario/          # Registro nuevo usuario
│   ├── registro_impugnacion/      # Wizard de registro
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │       ├── screens/
│   │       │   ├── step0_actores_screen.dart
│   │       │   ├── step1_representante_screen.dart
│   │       │   ├── step2_personalidad_screen.dart
│   │       │   ├── step3_autoridad_screen.dart
│   │       │   ├── step4_impugnacion_screen.dart
│   │       │   └── step5_evidencia_screen.dart
│   │       ├── widgets/
│   │       └── providers/
│   │           └── registro_state_provider.dart
│   │
│   ├── actores_involucrados/      # Actores involucrados
│   ├── seleccion_expediente/      # Selección de expediente
│   ├── consulta_impugnacion/      # Consulta de impugnaciones
│   ├── amicus_curiae/             # Amicus Curiae
│   ├── revision/                  # Revisión de datos
│   └── firmado/                   # Firma digital
│
└── main.dart                      # Entry point
```

## Flujos Principales

### 1. Registro de Impugnación
```
Inicio → Selección Expediente (opcional) → Wizard (6 pasos) → Revisión → Firma → Éxito
```

### 2. Amicus Curiae
```
Inicio → Wizard Amicus (3 pasos) → Revisión → Firma → Éxito
```

### 3. Consulta
```
Inicio → Consulta → Resultados
```

## State Management con Riverpod

### Providers principales:
- **authProvider** - Estado de autenticación
- **registroStateProvider** - Estado del wizard de registro
- **fileStorageProvider** - Gestión de archivos
- **apiClientProvider** - Cliente HTTP

### Patrón de State:
```dart
@freezed
class RegistroState with _$RegistroState {
  const factory RegistroState({
    @Default(0) int currentStep,
    @Default({}) Map<int, dynamic> stepsData,
    @Default({}) Map<int, bool> stepsValidity,
    @Default(false) bool isSubmitting,
  }) = _RegistroState;
}
```

## Navegación

Usa **Go Router** para navegación declarativa:

```dart
/                                    → Home
/login                              → Login
/registro-usuario                   → Nuevo usuario
/inicio                             → Dashboard
/registro-impugnacion/actores       → Step 0
/registro-impugnacion/representante → Step 1
...
/consulta                           → Consulta
/amicus-curiae/datos                → Amicus step 1
```

## Almacenamiento

- **Hive**: Datos persistentes (sesión, borradores)
- **Provider state**: Datos temporales del wizard
- **File system**: Archivos grandes (documentos)

## API Integration

- **Base URL**: Configurable por environment
- **Interceptors**: Auth token, logging
- **Chunked upload**: Para archivos grandes
- **Error handling**: Centralizado

## Theme INE

Colores oficiales:
- Primary: `#C42C7A` (Magenta INE)
- Secondary: `#351C45` (Morado oscuro)
- Accent: `#D5007F` (Rosa)
- Success: `#C8F7DC` (Verde claro)
- Error: `#DC3545` (Rojo)

Tipografía: **Roboto**
