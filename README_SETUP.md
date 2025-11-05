# ImpugnaINE Mobile - Guía de Configuración

## ✅ Estructura Creada

```
lib/
├── core/
│   ├── theme/
│   │   ├── app_colors.dart          ✅ Colores INE
│   │   └── app_theme.dart           ✅ Tema Material 3
│   ├── constants/
│   │   └── app_constants.dart       ✅ Constantes globales
│   └── router/
│       └── app_router.dart          ✅ Go Router configurado
├── features/
│   ├── home/
│   │   └── presentation/screens/
│   │       └── home_screen.dart     ✅ Pantalla Home
│   └── auth/
│       └── presentation/screens/
│           └── login_screen.dart    ✅ Pantalla Login
└── main.dart                        ✅ Actualizado con Riverpod + Router
```

## 🚀 Próximos Pasos

### 1. Ejecutar la aplicación

```bash
# En tu dispositivo Android conectado
flutter run

# O en el simulador de iOS
open -a Simulator
flutter run

# O en Chrome
flutter run -d chrome
```

### 2. Crear modelos con Freezed

Para crear los modelos de datos inmutables, usa Freezed:

```bash
# Ejemplo de modelo
lib/features/registro_impugnacion/domain/entities/registro_state.dart
```

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registro_state.freezed.dart';
part 'registro_state.g.json';

@freezed
class RegistroState with _$RegistroState {
  const factory RegistroState({
    @Default(0) int currentStep,
    @Default({}) Map<int, dynamic> stepsData,
    @Default({}) Map<int, bool> stepsValidity,
    @Default(false) bool isSubmitting,
  }) = _RegistroState;

  factory RegistroState.fromJson(Map<String, dynamic> json) =>
      _$RegistroStateFromJson(json);
}
```

Luego genera el código:

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 3. Crear Providers con Riverpod

```dart
// lib/features/registro_impugnacion/presentation/providers/registro_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/registro_state.dart';

class RegistroNotifier extends StateNotifier<RegistroState> {
  RegistroNotifier() : super(const RegistroState());

  void nextStep() {
    if (state.currentStep < 5) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    }
  }

  void previousStep() {
    if (state.currentStep > 0) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  void updateStepData(int step, dynamic data) {
    final newStepsData = Map<int, dynamic>.from(state.stepsData);
    newStepsData[step] = data;
    state = state.copyWith(stepsData: newStepsData);
  }
}

final registroProvider =
    StateNotifierProvider<RegistroNotifier, RegistroState>((ref) {
  return RegistroNotifier();
});
```

### 4. Crear pantallas del Wizard

Crea las 6 pantallas del wizard de registro en:
```
lib/features/registro_impugnacion/presentation/screens/
├── step0_actores_screen.dart
├── step1_representante_screen.dart
├── step2_personalidad_screen.dart
├── step3_autoridad_screen.dart
├── step4_impugnacion_screen.dart
└── step5_evidencia_screen.dart
```

### 5. Crear widgets compartidos

```
lib/shared/widgets/
├── buttons/
│   └── primary_button.dart
├── inputs/
│   └── custom_text_field.dart
├── file_uploader/
│   └── file_uploader_widget.dart
├── stepper/
│   └── wizard_stepper.dart
└── modals/
    └── confirm_exit_modal.dart
```

## 📦 Dependencias Instaladas

- ✅ **flutter_riverpod** - State management
- ✅ **go_router** - Navegación
- ✅ **freezed** - Modelos inmutables
- ✅ **dio** - HTTP client
- ✅ **hive** - Base de datos local
- ✅ **file_picker** - Selección de archivos
- ✅ **flutter_pdfview** - Visualizador de PDFs

## 🎨 Tema INE

Los colores oficiales están en `lib/core/theme/app_colors.dart`:

- **Primary**: #C42C7A (Magenta INE)
- **Secondary**: #351C45 (Morado oscuro)
- **Accent**: #D5007F (Rosa)
- **Success**: #C8F7DC (Verde claro)
- **Error**: #DC3545 (Rojo)

## 🗺️ Rutas Configuradas

- `/` - Home
- `/login` - Login
- `/registro-usuario` - Registro nuevo usuario
- `/inicio` - Dashboard
- `/registro-impugnacion/actores` - Step 0
- `/registro-impugnacion/representante` - Step 1
- `/registro-impugnacion/personalidad` - Step 2
- `/registro-impugnacion/autoridad` - Step 3
- `/registro-impugnacion/impugnacion` - Step 4
- `/registro-impugnacion/evidencia` - Step 5
- `/actores-involucrados` - Actores
- `/seleccion-expediente` - Selección
- `/consulta` - Consulta
- `/amicus-curiae/*` - Amicus Curiae (3 pasos)
- `/revision` - Revisión
- `/firmado` - Firmado
- `/registro-exitoso` - Éxito

## 🔧 Comandos Útiles

```bash
# Generar código (Freezed, JSON, Riverpod)
dart run build_runner build --delete-conflicting-outputs

# Watch mode (regenera automáticamente)
dart run build_runner watch --delete-conflicting-outputs

# Limpiar build
flutter clean && flutter pub get

# Análisis de código
flutter analyze

# Formatear código
dart format .

# Ver dispositivos
flutter devices

# Hot reload (durante desarrollo)
# Presiona 'r' en la terminal

# Hot restart
# Presiona 'R' en la terminal
```

## 📱 Próximas Tareas Sugeridas

1. ✅ Crear modelos de datos (Freezed)
2. ✅ Implementar providers de estado (Riverpod)
3. ✅ Crear pantallas del wizard (6 steps)
4. ✅ Implementar navegación condicional (Titular vs Representantes)
5. ✅ Crear componente Stepper
6. ✅ Implementar file uploader
7. ✅ Conectar con API (Dio)
8. ✅ Implementar almacenamiento local (Hive)
9. ✅ Crear validaciones de formularios
10. ✅ Implementar manejo de errores

## 📚 Recursos

- [Flutter Docs](https://docs.flutter.dev/)
- [Riverpod Docs](https://riverpod.dev/)
- [Go Router Docs](https://pub.dev/packages/go_router)
- [Freezed Docs](https://pub.dev/packages/freezed)
- [Dio Docs](https://pub.dev/packages/dio)

¡Listo para empezar a desarrollar! 🚀
