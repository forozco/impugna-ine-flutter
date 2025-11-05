import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ActoresHeader extends StatelessWidget {
  const ActoresHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Actores involucrados',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Selecciona la opción deseada',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(color: AppColors.textPrimary),
          ),
          const SizedBox(height: 8),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
              children: [
                TextSpan(text: 'Dato obligatorio '),
                TextSpan(
                  text: '(*)',
                  style: TextStyle(color: AppColors.error),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
