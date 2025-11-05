import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/registro_state.dart';

/// Provider para el estado del wizard de registro
final registroProvider = StateNotifierProvider<RegistroNotifier, RegistroState>(
  (ref) {
    return RegistroNotifier();
  },
);

/// Notifier que maneja la lógica del wizard de registro
class RegistroNotifier extends StateNotifier<RegistroState> {
  RegistroNotifier() : super(const RegistroState());

  /// Avanzar al siguiente paso
  void nextStep() {
    if (state.currentStep < 5) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    }
  }

  /// Retroceder al paso anterior
  void previousStep() {
    if (state.currentStep > 0) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  /// Ir a un paso específico
  void goToStep(int step) {
    if (step >= 0 && step <= 5) {
      state = state.copyWith(currentStep: step);
    }
  }

  /// Actualizar datos del Step 0
  void updateStep0(Step0Data data) {
    state = state.copyWith(step0Data: data);
    _updateStepValidity(0, _validateStep0(data));
  }

  /// Actualizar datos del Step 1
  void updateStep1(Step1Data data) {
    state = state.copyWith(step1Data: data);
    _updateStepValidity(1, _validateStep1(data));
  }

  /// Actualizar datos del Step 2
  void updateStep2(Step2Data data) {
    state = state.copyWith(step2Data: data);
    _updateStepValidity(2, _validateStep2(data));
  }

  /// Actualizar datos del Step 3
  void updateStep3(Step3Data data) {
    state = state.copyWith(step3Data: data);
    _updateStepValidity(3, _validateStep3(data));
  }

  /// Actualizar datos del Step 4
  void updateStep4(Step4Data data) {
    state = state.copyWith(step4Data: data);
    _updateStepValidity(4, _validateStep4(data));
  }

  /// Actualizar datos del Step 5
  void updateStep5(Step5Data data) {
    state = state.copyWith(step5Data: data);
    _updateStepValidity(5, _validateStep5(data));
  }

  /// Actualizar validez de un paso
  void _updateStepValidity(int step, bool isValid) {
    final newValidity = Map<int, bool>.from(state.stepsValidity);
    newValidity[step] = isValid;
    state = state.copyWith(stepsValidity: newValidity);
  }

  /// Validar Step 0
  bool _validateStep0(Step0Data data) {
    return data.option.isNotEmpty;
  }

  /// Validar Step 1
  bool _validateStep1(Step1Data data) {
    if (data.option == 'titular') {
      return data.nombreTitular?.isNotEmpty ?? false;
    } else {
      return data.representantes.isNotEmpty;
    }
  }

  /// Validar Step 2 (opcional)
  bool _validateStep2(Step2Data data) {
    return true; // Step 2 es opcional
  }

  /// Validar Step 3
  bool _validateStep3(Step3Data data) {
    return data.autoridadesAgregadas.isNotEmpty;
  }

  /// Validar Step 4
  bool _validateStep4(Step4Data data) {
    return data.descripcion.isNotEmpty;
  }

  /// Validar Step 5 (opcional)
  bool _validateStep5(Step5Data data) {
    return true; // Step 5 es opcional
  }

  /// Verificar si se puede avanzar al siguiente paso
  bool canGoNext() {
    final validity = state.stepsValidity[state.currentStep] ?? false;
    return validity;
  }

  /// Verificar si se puede retroceder
  bool canGoPrevious() {
    return state.currentStep > 0;
  }

  /// Obtener progreso del wizard (0.0 - 1.0)
  double getProgress() {
    return (state.currentStep + 1) / 6;
  }

  /// Limpiar todos los datos del wizard
  void reset() {
    state = const RegistroState();
  }

  /// Enviar el registro completo
  Future<void> submitRegistro() async {
    state = state.copyWith(isSubmitting: true, errorMessage: null);

    try {
      // TODO: Implementar llamada a la API
      // await apiService.enviarDatos(state);

      // Simular delay
      await Future.delayed(const Duration(seconds: 2));

      state = state.copyWith(isSubmitting: false, isSuccess: true);
    } catch (e) {
      state = state.copyWith(
        isSubmitting: false,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }

  /// Determinar el paso siguiente basado en la opción seleccionada
  /// Si es 'titular', se salta Step 1 y Step 2
  /// Si es 'representantes', sigue la secuencia normal
  int getNextStepIndex() {
    if (state.currentStep == 0 && state.step0Data?.option == 'titular') {
      // Titular salta directamente al Step 3
      return 3;
    }
    return state.currentStep + 1;
  }

  /// Determinar el paso anterior considerando la navegación condicional
  int getPreviousStepIndex() {
    if (state.currentStep == 3 && state.step0Data?.option == 'titular') {
      // Si estamos en Step 3 y es titular, volver a Step 0
      return 0;
    }
    return state.currentStep - 1;
  }
}

/// Provider computed para verificar si todos los pasos están válidos
final allStepsValidProvider = Provider<bool>((ref) {
  final state = ref.watch(registroProvider);

  // Verificar pasos obligatorios
  final step0Valid = state.stepsValidity[0] ?? false;
  final step3Valid = state.stepsValidity[3] ?? false;
  final step4Valid = state.stepsValidity[4] ?? false;

  // Step 1 solo es obligatorio si option es 'representantes'
  bool step1Valid = true;
  if (state.step0Data?.option == 'representantes') {
    step1Valid = state.stepsValidity[1] ?? false;
  }

  return step0Valid && step1Valid && step3Valid && step4Valid;
});

/// Provider para el progreso del wizard
final wizardProgressProvider = Provider<double>((ref) {
  final state = ref.watch(registroProvider);
  return (state.currentStep + 1) / 6;
});
