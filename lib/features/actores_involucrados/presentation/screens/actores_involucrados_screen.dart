import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/impugna_app_bar.dart';
import '../widgets/actores_header.dart';
import '../widgets/navigation_card.dart';
import '../widgets/expandable_card.dart';

class ActoresInvolucradosScreen extends StatefulWidget {
  const ActoresInvolucradosScreen({super.key});

  @override
  State<ActoresInvolucradosScreen> createState() =>
      _ActoresInvolucradosScreenState();
}

class _ActoresInvolucradosScreenState extends State<ActoresInvolucradosScreen> {
  String? _expandedCard;
  final _folioAmpliacionController = TextEditingController();
  final _folioCoadyuvanteController = TextEditingController();
  final _folioAmicusController = TextEditingController();

  bool _ampliacionTouched = false;
  bool _coadyuvanteTouched = false;
  bool _amicusTouched = false;

  @override
  void dispose() {
    _folioAmpliacionController.dispose();
    _folioCoadyuvanteController.dispose();
    _folioAmicusController.dispose();
    super.dispose();
  }

  void _handleExpand(String tipo) {
    setState(() {
      _expandedCard = _expandedCard == tipo ? null : tipo;
    });
  }

  bool _isAmpliacionValid() {
    return _folioAmpliacionController.text.trim().isNotEmpty;
  }

  bool _isCoadyuvanteValid() {
    return _folioCoadyuvanteController.text.trim().isNotEmpty;
  }

  bool _isAmicusValid() {
    return _folioAmicusController.text.trim().isNotEmpty;
  }

  void _buscarAmpliacion() {
    if (!_isAmpliacionValid()) return;

    context.go(
      '/seleccion-expediente',
      extra: {
        'tipo': 'ampliacion',
        'folio': _folioAmpliacionController.text.trim(),
      },
    );
  }

  void _buscarCoadyuvante() {
    if (!_isCoadyuvanteValid()) return;

    context.go(
      '/seleccion-expediente',
      extra: {
        'tipo': 'coadyuvante',
        'folio': _folioCoadyuvanteController.text.trim(),
      },
    );
  }

  void _buscarAmicus() {
    if (!_isAmicusValid()) return;

    context.go(
      '/seleccion-expediente',
      extra: {'tipo': 'amicus', 'folio': _folioAmicusController.text.trim()},
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: const ImpugnaAppBar(showBackButton: true),
        body: Column(
          children: [
            // Header blanco
            const ActoresHeader(),
            // Contenido con scroll
            Expanded(
              child: Container(
                color: AppColors.background,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          // Use 2 columns on tablets/desktop, 1 on mobile
                          final crossAxisCount = constraints.maxWidth > 600
                              ? 2
                              : 1;
                          final spacing = constraints.maxWidth > 600
                              ? 24.0
                              : 16.0;

                          return GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: spacing,
                            mainAxisSpacing: spacing,
                            childAspectRatio: constraints.maxWidth > 600
                                ? 1.0
                                : 1.2,
                            children: [
                              NavigationCard(
                                title: 'Registrar una nueva impugnación',
                                icon: Icons.assignment_outlined,
                                onTap: () =>
                                    context.go('/registro-impugnacion/actores'),
                              ),
                              ExpandableCard(
                                tipo: 'ampliacion',
                                title: 'Registrar una ampliación de demanda',
                                icon: Icons.add_circle_outline,
                                controller: _folioAmpliacionController,
                                touched: _ampliacionTouched,
                                isValid: _isAmpliacionValid,
                                onSearch: _buscarAmpliacion,
                                onTouchedChange: (value) =>
                                    setState(() => _ampliacionTouched = value),
                                isExpanded: _expandedCard == 'ampliacion',
                                onExpand: () => _handleExpand('ampliacion'),
                              ),
                              ExpandableCard(
                                tipo: 'coadyuvante',
                                title:
                                    'Registrar tercero interesado - Coadyuvante',
                                icon: Icons.people_outline,
                                controller: _folioCoadyuvanteController,
                                touched: _coadyuvanteTouched,
                                isValid: _isCoadyuvanteValid,
                                onSearch: _buscarCoadyuvante,
                                onTouchedChange: (value) =>
                                    setState(() => _coadyuvanteTouched = value),
                                isExpanded: _expandedCard == 'coadyuvante',
                                onExpand: () => _handleExpand('coadyuvante'),
                              ),
                              ExpandableCard(
                                tipo: 'amicus',
                                title:
                                    'Registro de Amigo de la corte (Amicus curiae)',
                                icon: Icons.gavel_outlined,
                                controller: _folioAmicusController,
                                touched: _amicusTouched,
                                isValid: _isAmicusValid,
                                onSearch: _buscarAmicus,
                                onTouchedChange: (value) =>
                                    setState(() => _amicusTouched = value),
                                isExpanded: _expandedCard == 'amicus',
                                onExpand: () => _handleExpand('amicus'),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
