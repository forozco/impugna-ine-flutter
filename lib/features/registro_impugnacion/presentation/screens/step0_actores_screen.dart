import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/impugna_app_bar.dart';
import '../../../../shared/widgets/stepper/wizard_stepper.dart';
import '../../domain/entities/registro_state.dart';
import '../providers/registro_provider.dart';

/// Step 0: Actores - Selección de quién está impugnando
/// Replica exactamente el comportamiento de la versión web
class Step0ActoresScreen extends ConsumerStatefulWidget {
  const Step0ActoresScreen({super.key});

  @override
  ConsumerState<Step0ActoresScreen> createState() =>
      _Step0ActoresScreenState();
}

class _Step0ActoresScreenState extends ConsumerState<Step0ActoresScreen> {
  bool _isFromExpediente = false;
  String? _tipoRegistro;
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    // Detectar si viene desde expediente
    final step0Data = ref.read(registroProvider).step0Data;
    if (step0Data != null && step0Data.folio != null) {
      _isFromExpediente = true;
      _tipoRegistro = step0Data.tipoImpugnacion;
    }
    // Cargar opción previamente seleccionada si existe
    _selectedOption = step0Data?.option;
  }

  bool get _isCoadyuvante => _tipoRegistro == 'coadyuvante';
  bool get _isAmpliacion => _tipoRegistro == 'ampliacion';
  bool get _showContinueButton =>
      _isFromExpediente && _isAmpliacion && !_isCoadyuvante;

  /// Seleccionar opción y guardar en Riverpod
  void _selectOption(String option) {
    HapticFeedback.lightImpact();
    setState(() {
      _selectedOption = option;
    });

    final step0Data = Step0Data(
      option: option,
      tipoImpugnacion: _tipoRegistro ?? '',
      folio: ref.read(registroProvider).step0Data?.folio,
    );
    ref.read(registroProvider.notifier).updateStep0(step0Data);
  }

  /// Navegar a Titular (Agraviado) - Step 3
  void _navigateToTitular() {
    _selectOption('titular');
    ref.read(registroProvider.notifier).goToStep(3);
  }

  /// Navegar a Representante(s) - Step 1
  void _navigateToRepresentante() {
    _selectOption('representantes');
    ref.read(registroProvider.notifier).goToStep(1);
  }

  /// Continuar desde expediente (solo para ampliación)
  void _continueFromExpediente() {
    HapticFeedback.mediumImpact();
    ref.read(registroProvider.notifier).goToStep(3);
  }

  /// Retroceder
  void _onBack() {
    HapticFeedback.selectionClick();
    if (_isFromExpediente) {
      context.pop();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isIOS = Platform.isIOS;
    final registroState = ref.watch(registroProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ImpugnaAppBar(
        showBackButton: true,
        onBackPressed: _onBack,
      ),
      body: Column(
        children: [
          // Wizard Stepper
          WizardStepper(
            currentStep: 0,
            totalSteps: 6,
            stepLabels: const ['Actores', 'Representante', 'Autoridades', 'Descripción', 'Documentos', 'Confirmación'],
          ),
          // Content
          Expanded(
            child: SingleChildScrollView(
              physics: isIOS ? const BouncingScrollPhysics() : const ClampingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header con "Dato obligatorio" condicional
                    // if (!_isFromExpediente || _isCoadyuvante) ...[
                    //   Row(
                    //     children: [
                    //       Text(
                    //         'Dato obligatorio ',
                    //         style: TextStyle(
                    //           fontSize: 13,
                    //           color: Colors.grey.shade600,
                    //           fontWeight: FontWeight.w400,
                    //         ),
                    //       ),
                    //       Text(
                    //         '(*)',
                    //         style: TextStyle(
                    //           fontSize: 13,
                    //           color: Colors.red.shade700,
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   const SizedBox(height: 16),
                    // ],

                    // Título principal
                    // Text(
                    //   'Elige el tipo de persona que registra la impugnación',
                    //   style: TextStyle(
                    //     fontSize: 22,
                    //     fontWeight: FontWeight.w700,
                    //     color: AppColors.textPrimary,
                    //     height: 1.3,
                    //   ),
                    // ),
                    // const SizedBox(height: 28),

                // Radio Group con espaciado nativo
                Column(
                  children: [
                    // Opción 1: Titular
                    if (_isFromExpediente && _isAmpliacion)
                      _buildStaticCard(
                        label: 'Titular (Agraviado)',
                      )
                    else
                      _buildRadioCard(
                        label: _isCoadyuvante
                            ? 'Titular del registro'
                            : 'Titular (Agraviado)',
                        value: 'titular',
                        onTap: _navigateToTitular,
                        isSelected: _selectedOption == 'titular',
                      ),

                    const SizedBox(height: 16),

                    // Opción 2: Representante(s)
                    _buildRadioCard(
                      label: 'Representante(s)',
                      value: 'representantes',
                      onTap: _navigateToRepresentante,
                      isSelected: _selectedOption == 'representantes',
                    ),
                  ],
                ),

                    // Botones de navegación
                    const SizedBox(height: 48),

                    // Botón Continuar (solo para ampliación desde expediente)
                    if (_showContinueButton) ...[
                      SizedBox(
                        width: double.infinity,
                        child: _buildButton(
                          context: context,
                          label: 'Continuar',
                          onPressed: _continueFromExpediente,
                          isPrimary: true,
                          isIOS: isIOS,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],

                    // Botón Retroceder
                    SizedBox(
                      width: double.infinity,
                      child: _buildButton(
                        context: context,
                        label: 'Retroceder',
                        onPressed: _onBack,
                        isPrimary: false,
                        isIOS: isIOS,
                      ),
                    ),

                    const SizedBox(height: 24), // Padding bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Botón adaptativo iOS/Android
  Widget _buildButton({
    required BuildContext context,
    required String label,
    required VoidCallback onPressed,
    required bool isPrimary,
    required bool isIOS,
  }) {
    final bgColor = isPrimary ? const Color(0xFFC42C7A) : const Color(0xFFF0EBF2);
    final textColor = isPrimary ? Colors.white : const Color(0xFF5B2A73);

    if (isIOS) {
      return CupertinoButton(
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 14),
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          elevation: isPrimary ? 2 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }

  /// Card estática (sin radio button) para ampliación desde expediente
  Widget _buildStaticCard({required String label}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(width: 40),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Card de selección simple como en web
  Widget _buildRadioCard({
    required String label,
    required String value,
    required VoidCallback onTap,
    bool isSelected = false,
  }) {
    final bool isIOS = Platform.isIOS;
    final IconData icon = value == 'titular'
        ? Icons.person_outline
        : Icons.people_outline;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFD4C5DC) : const Color(0xFFEBEBEB),
        borderRadius: BorderRadius.circular(12),
        border: isSelected
            ? Border.all(color: const Color(0xFF5B2A73), width: 2)
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(isSelected ? 0.08 : 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          splashColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                // Icono simple
                Icon(
                  icon,
                  color: const Color(0xFF5B2A73),
                  size: 28,
                ),
                const SizedBox(width: 16),
                // Label
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      color: const Color(0xFF333333),
                      height: 1.3,
                    ),
                  ),
                ),
                // Checkmark si está seleccionado
                if (isSelected)
                  const Icon(
                    Icons.check_circle,
                    color: Color(0xFF5B2A73),
                    size: 24,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
