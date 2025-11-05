import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/impugna_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ImpugnaAppBar(),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header/Banner
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.secondary, AppColors.primary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.gavel, size: 64, color: AppColors.white),
                      SizedBox(height: 16),
                      Text(
                        'ImpugnaINE',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Welcome section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenida(o) a ImpugnaINE',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'En este sistema puedes registrar un medio de impugnación en materia electoral',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 32),

                    // Benefits
                    _BenefitItem(
                      icon: Icons.schedule,
                      text: 'Tener certeza de los plazos y términos',
                    ),
                    _BenefitItem(
                      icon: Icons.how_to_vote,
                      text: 'Ejercer el derecho a impugnar',
                    ),
                    _BenefitItem(
                      icon: Icons.phonelink,
                      text: 'Acceder a la digitalización del trámite',
                    ),
                    _BenefitItem(
                      icon: Icons.speed,
                      text: 'Agilizar la recepción y envío de documentos',
                    ),
                    _BenefitItem(
                      icon: Icons.track_changes,
                      text: 'Dar seguimiento al estado del trámite',
                    ),

                    const SizedBox(height: 32),

                    // Info banner
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.greyLight,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline, color: AppColors.primary),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Para hacer el registro necesitas alguna de las siguientes firmas electrónicas: SAT, FIREL o Firma INE',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Action buttons
                    ElevatedButton(
                      onPressed: () => context.push('/login'),
                      child: const Text('Iniciar Sesión'),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => context.push('/registro-usuario'),
                      child: const Text('Registrarse'),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => context.push('/actores-involucrados'),
                      child: const Text('Actores Involucrados'),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () =>
                          context.push('/registro-impugnacion/actores'),
                      child: const Text('Registrar Impugnación (Demo)'),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () => context.push('/consulta'),
                      child: const Text('Consultar Impugnación'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BenefitItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _BenefitItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 24),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
