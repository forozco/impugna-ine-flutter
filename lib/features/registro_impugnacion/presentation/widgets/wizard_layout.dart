import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/impugna_app_bar.dart';
import '../../../../shared/widgets/stepper/wizard_stepper.dart';
import '../providers/registro_provider.dart';

/// Layout del wizard que envuelve cada pantalla de paso
class WizardLayout extends ConsumerWidget {
  final Widget child;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final bool canNext;
  final bool showPrevious;

  const WizardLayout({
    super.key,
    required this.child,
    this.onNext,
    this.onPrevious,
    this.canNext = true,
    this.showPrevious = true,
  });

  static const List<String> _stepLabels = [
    'Actores',
    'Representante',
    'Personalidad',
    'Autoridad',
    'Impugnación',
    'Evidencia',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registroState = ref.watch(registroProvider);

    return Scaffold(
      appBar: ImpugnaAppBar(
        showBackButton: false,
        onMenuTap: () => _showExitConfirmation(context),
      ),
      body: Column(
        children: [
          // Stepper
          WizardStepper(
            currentStep: registroState.currentStep,
            totalSteps: 6,
            stepLabels: _stepLabels,
            stepsValidity: registroState.stepsValidity,
          ),

          // Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: child,
            ),
          ),

          // Navigation buttons
          _buildNavigationButtons(context, ref, registroState),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons(
    BuildContext context,
    WidgetRef ref,
    registroState,
  ) {
    final notifier = ref.read(registroProvider.notifier);
    final isLastStep = registroState.currentStep == 5;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Previous button
            if (showPrevious && registroState.currentStep > 0)
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    if (onPrevious != null) {
                      onPrevious!();
                    } else {
                      final previousStep = notifier.getPreviousStepIndex();
                      notifier.goToStep(previousStep);
                    }
                  },
                  child: const Text('Anterior'),
                ),
              ),

            if (showPrevious && registroState.currentStep > 0)
              const SizedBox(width: 12),

            // Next/Finish button
            Expanded(
              child: ElevatedButton(
                onPressed: canNext
                    ? () {
                        if (isLastStep) {
                          // Ir a revisión
                          context.push('/revision');
                        } else {
                          if (onNext != null) {
                            onNext!();
                          } else {
                            final nextStep = notifier.getNextStepIndex();
                            notifier.goToStep(nextStep);
                          }
                        }
                      }
                    : null,
                child: Text(isLastStep ? 'Revisar' : 'Siguiente'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Salir del registro?'),
        content: const Text(
          'Si sales ahora, perderás toda la información que has ingresado.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.go('/');
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: const Text('Salir'),
          ),
        ],
      ),
    );
  }
}
