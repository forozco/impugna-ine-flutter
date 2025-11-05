import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ExpandableCard extends StatelessWidget {
  final String tipo;
  final String title;
  final IconData icon;
  final TextEditingController controller;
  final bool touched;
  final bool Function() isValid;
  final VoidCallback onSearch;
  final ValueChanged<bool> onTouchedChange;
  final bool isExpanded;
  final VoidCallback onExpand;

  const ExpandableCard({
    super.key,
    required this.tipo,
    required this.title,
    required this.icon,
    required this.controller,
    required this.touched,
    required this.isValid,
    required this.onSearch,
    required this.onTouchedChange,
    required this.isExpanded,
    required this.onExpand,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onExpand,
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: isExpanded ? const Color(0xFFE2F0F1) : AppColors.greyLight,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Card Header
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon, size: 40, color: AppColors.primary),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),

                // Expandable Content
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        const SizedBox(height: 16),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textPrimary,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Ingresa el folio o no. expediente asociado',
                              ),
                              TextSpan(
                                text: ' *',
                                style: TextStyle(color: AppColors.error),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            hintText: '0-XXXX-AAAA-1',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: isValid() ? onSearch : null,
                              color: isValid()
                                  ? AppColors.primary
                                  : AppColors.grey,
                            ),
                            errorText: touched && !isValid()
                                ? 'Este campo es obligatorio'
                                : null,
                          ),
                          onChanged: (value) {
                            // Trigger rebuild by notifying parent
                            onTouchedChange(touched);
                          },
                          onSubmitted: (value) {
                            if (isValid()) onSearch();
                          },
                          onTap: () {
                            // Stop propagation to card
                          },
                        ),
                      ],
                    ),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
