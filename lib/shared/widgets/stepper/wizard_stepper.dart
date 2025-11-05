import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

/// Widget de stepper horizontal para wizard multi-paso
/// Con colores morados del diseño web #582E73
class WizardStepper extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final List<String> stepLabels;
  final Map<int, bool> stepsValidity;

  const WizardStepper({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.stepLabels,
    this.stepsValidity = const {},
  });

  // Color morado principal del stepper (del diseño web)
  static const Color stepperPurple = Color(0xFF582E73);
  static const Color stepperPurpleLight = Color(0xFFF0EBF2);
  static const Color stepMuted = Color(0xFFE2E2E7);
  static const Color stepDisabled = Color(0xFFD6D6D6);

  @override
  Widget build(BuildContext context) {
    final progress = totalSteps > 0 ? (currentStep + 1) / totalSteps : 0.0;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Paso ${currentStep + 1} de $totalSteps',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: stepperPurple,
                ),
              ),
              Text(
                '${(progress * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: stepperPurple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0, end: progress),
              builder: (context, value, child) {
                return LinearProgressIndicator(
                  value: value,
                  minHeight: 8,
                  backgroundColor: stepMuted,
                  valueColor: AlwaysStoppedAnimation<Color>(stepperPurple),
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // Step indicators (scrollable)
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: totalSteps,
              itemBuilder: (context, index) {
                return _buildStepIndicator(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepIndicator(int index) {
    final isActive = index == currentStep;
    final isCompleted = index < currentStep;
    final isValid = stepsValidity[index] ?? false;
    final isFuture = index > currentStep;

    Color circleColor;
    Color textColor;
    Widget icon;

    if (isCompleted) {
      if (isValid) {
        circleColor = stepperPurple;
        textColor = stepperPurple;
        icon = const Icon(Icons.check_circle, color: Colors.white, size: 20);
      } else {
        circleColor = Colors.orange;
        textColor = Colors.orange;
        icon = const Icon(Icons.warning_amber_rounded, color: Colors.white, size: 20);
      }
    } else if (isActive) {
      circleColor = stepperPurple;
      textColor = stepperPurple;
      icon = Text(
        '${index + 1}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      );
    } else {
      circleColor = stepDisabled;
      textColor = AppColors.grey;
      icon = Text(
        '${index + 1}',
        style: TextStyle(
          color: AppColors.grey.withOpacity(0.7),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      );
    }

    final label = index < stepLabels.length
        ? stepLabels[index]
        : 'Paso ${index + 1}';

    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: stepperPurple.withOpacity(0.4),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: Center(child: icon),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
