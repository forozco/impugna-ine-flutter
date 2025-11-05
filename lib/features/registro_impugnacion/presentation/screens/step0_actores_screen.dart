import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/registro_state.dart';
import '../providers/registro_provider.dart';
import '../widgets/wizard_layout.dart';

/// Step 0: Actores - Selección de quién está impugnando
class Step0ActoresScreen extends ConsumerStatefulWidget {
  const Step0ActoresScreen({super.key});

  @override
  ConsumerState<Step0ActoresScreen> createState() => _Step0ActoresScreenState();
}

class _Step0ActoresScreenState extends ConsumerState<Step0ActoresScreen> {
  String? _selectedOption;
  String? _tipoImpugnacion;
  final _folioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Cargar datos existentes si los hay
    final step0Data = ref.read(registroProvider).step0Data;
    if (step0Data != null) {
      _selectedOption = step0Data.option;
      _tipoImpugnacion = step0Data.tipoImpugnacion;
      if (step0Data.folio != null) {
        _folioController.text = step0Data.folio!;
      }
    }
  }

  @override
  void dispose() {
    _folioController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (_selectedOption != null) {
      // Guardar datos del step
      final step0Data = Step0Data(
        option: _selectedOption!,
        tipoImpugnacion: _tipoImpugnacion,
        folio: _folioController.text.isEmpty ? null : _folioController.text,
      );

      ref.read(registroProvider.notifier).updateStep0(step0Data);

      // Navegar al siguiente paso
      final nextStep = ref.read(registroProvider.notifier).getNextStepIndex();
      ref.read(registroProvider.notifier).goToStep(nextStep);
    }
  }

  @override
  Widget build(BuildContext context) {
    final canNext = _selectedOption != null;

    return WizardLayout(
      canNext: canNext,
      showPrevious: false,
      onNext: _handleNext,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Título
          Text(
            '¿Quién está impugnando?',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Selecciona si tú eres el titular o si actúas como representante',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),

          // Opción: Titular
          _buildOptionCard(
            title: 'Yo soy el titular',
            description:
                'Estoy registrando la impugnación a mi nombre como titular',
            icon: Icons.person,
            value: 'titular',
          ),

          const SizedBox(height: 16),

          // Opción: Representantes
          _buildOptionCard(
            title: 'Actúo como representante',
            description:
                'Estoy registrando la impugnación en representación de otra(s) persona(s)',
            icon: Icons.people,
            value: 'representantes',
          ),

          if (_selectedOption != null) ...[
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 24),

            // Tipo de impugnación (opcional)
            Text(
              'Tipo de impugnación',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),

            DropdownButtonFormField<String>(
              value: _tipoImpugnacion,
              decoration: const InputDecoration(
                labelText: 'Tipo de impugnación (opcional)',
                hintText: 'Selecciona un tipo',
              ),
              items: const [
                DropdownMenuItem(
                  value: 'ampliacion',
                  child: Text('Ampliación de demanda'),
                ),
                DropdownMenuItem(
                  value: 'coadyuvante',
                  child: Text('Tercero interesado - Coadyuvante'),
                ),
                DropdownMenuItem(
                  value: 'amicus',
                  child: Text('Amigo de la corte (Amicus curiae)'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _tipoImpugnacion = value;
                });
              },
            ),

            const SizedBox(height: 16),

            // Folio (opcional)
            TextFormField(
              controller: _folioController,
              decoration: const InputDecoration(
                labelText: 'Folio o número de expediente (opcional)',
                hintText: 'INE-XXX/YYYY-Z',
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildOptionCard({
    required String title,
    required String description,
    required IconData icon,
    required String value,
  }) {
    final isSelected = _selectedOption == value;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withOpacity(0.1)
              : AppColors.greyLight,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.grey,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: AppColors.white, size: 32),
            ),
            const SizedBox(width: 16),

            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            // Check icon
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: AppColors.primary,
                size: 28,
              ),
          ],
        ),
      ),
    );
  }
}
