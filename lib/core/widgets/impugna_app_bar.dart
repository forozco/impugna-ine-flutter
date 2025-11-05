import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_colors.dart';

class ImpugnaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final VoidCallback? onMenuTap;
  final VoidCallback? onUserMenuTap;

  const ImpugnaAppBar({
    super.key,
    this.showBackButton = false,
    this.onMenuTap,
    this.onUserMenuTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.secondary),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Row(
        children: [
          // Logo INE
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primary, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(
                Icons.how_to_vote_outlined,
                color: AppColors.primary,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            'Impugna',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      actions: [
        // User avatar button
        IconButton(
          onPressed: onUserMenuTap ?? () => _showMenu(context),
          icon: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondary.withOpacity(0.3),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        // Menu hamburger button
        IconButton(
          icon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 3,
                color: AppColors.secondary,
                margin: const EdgeInsets.only(bottom: 4),
              ),
              Container(
                width: 24,
                height: 3,
                color: AppColors.secondary,
                margin: const EdgeInsets.only(bottom: 4),
              ),
              Container(width: 24, height: 3, color: AppColors.secondary),
            ],
          ),
          onPressed: onMenuTap ?? () => _showMenu(context),
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  void _showMenu(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.centerRight,
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header del drawer con botón de cerrar
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Menú',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),

                    // Sección de usuario
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [AppColors.primary, Colors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: AppColors.secondary,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Usuario',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'usuario@example.com',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Divider(color: Colors.white24, height: 1),

                    // Menu items
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        children: [
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.home_outlined,
                            title: 'Inicio',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to home
                            },
                          ),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.assignment_outlined,
                            title: 'Registro',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to registro
                            },
                          ),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.search,
                            title: 'Consulta',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to consulta
                            },
                          ),
                          const Divider(color: Colors.white24, height: 32),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.person_outline,
                            title: 'Mi perfil',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to profile
                            },
                          ),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.settings_outlined,
                            title: 'Configuración',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to settings
                            },
                          ),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.help_outline,
                            title: 'Ayuda',
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Navigate to help
                            },
                          ),
                          const Divider(color: Colors.white24, height: 32),
                          _buildDrawerItem(
                            context: context,
                            icon: Icons.logout,
                            title: 'Cerrar sesión',
                            iconColor: Colors.redAccent,
                            onTap: () {
                              Navigator.pop(context);
                              // TODO: Show logout confirmation dialog
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position:
              Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut),
              ),
          child: child,
        );
      },
    );
  }

  Widget _buildDrawerItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    final color = iconColor ?? Colors.white;

    return ListTile(
      leading: Icon(icon, color: color, size: 28),
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      hoverColor: Colors.white10,
    );
  }
}
