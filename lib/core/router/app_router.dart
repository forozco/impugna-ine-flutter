import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Screens
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/registro_impugnacion/presentation/screens/step0_actores_screen.dart';
import '../../features/actores_involucrados/presentation/screens/actores_involucrados_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      // Home
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),

      // Auth
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: '/registro-usuario',
        name: 'registro-usuario',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Registro Usuario')),
        ),
      ),

      // Dashboard
      GoRoute(
        path: '/inicio',
        name: 'inicio',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Inicio')),
          body: const Center(child: Text('Dashboard')),
        ),
      ),

      // Registro Impugnación Wizard
      GoRoute(
        path: '/registro-impugnacion',
        name: 'registro-impugnacion',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Wizard Registro')),
        ),
        routes: [
          GoRoute(
            path: 'actores',
            name: 'registro-actores',
            builder: (context, state) => const Step0ActoresScreen(),
          ),
          GoRoute(
            path: 'representante',
            name: 'registro-representante',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Representante')),
              body: const Center(child: Text('Step 1: Representante')),
            ),
          ),
          GoRoute(
            path: 'personalidad',
            name: 'registro-personalidad',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Personalidad')),
              body: const Center(child: Text('Step 2: Personalidad')),
            ),
          ),
          GoRoute(
            path: 'autoridad',
            name: 'registro-autoridad',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Autoridad')),
              body: const Center(child: Text('Step 3: Autoridad')),
            ),
          ),
          GoRoute(
            path: 'impugnacion',
            name: 'registro-impugnacion-step',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Impugnación')),
              body: const Center(child: Text('Step 4: Impugnación')),
            ),
          ),
          GoRoute(
            path: 'evidencia',
            name: 'registro-evidencia',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Evidencia')),
              body: const Center(child: Text('Step 5: Evidencia')),
            ),
          ),
        ],
      ),

      // Actores Involucrados
      GoRoute(
        path: '/actores-involucrados',
        name: 'actores-involucrados',
        builder: (context, state) => const ActoresInvolucradosScreen(),
      ),

      // Selección Expediente
      GoRoute(
        path: '/seleccion-expediente',
        name: 'seleccion-expediente',
        builder: (context, state) {
          final tipo = state.uri.queryParameters['tipo'];
          final folio = state.uri.queryParameters['folio'];
          return Scaffold(
            appBar: AppBar(title: const Text('Selección Expediente')),
            body: Center(
              child: Text('Tipo: $tipo\nFolio: $folio'),
            ),
          );
        },
      ),

      // Consulta
      GoRoute(
        path: '/consulta',
        name: 'consulta',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Consulta Impugnación')),
          body: const Center(child: Text('Consulta')),
        ),
      ),

      // Amicus Curiae
      GoRoute(
        path: '/amicus-curiae',
        name: 'amicus-curiae',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Wizard Amicus')),
        ),
        routes: [
          GoRoute(
            path: 'datos',
            name: 'amicus-datos',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Datos')),
              body: const Center(child: Text('Amicus: Datos')),
            ),
          ),
          GoRoute(
            path: 'experiencia',
            name: 'amicus-experiencia',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Experiencia')),
              body: const Center(child: Text('Amicus: Experiencia')),
            ),
          ),
          GoRoute(
            path: 'escrito',
            name: 'amicus-escrito',
            builder: (context, state) => Scaffold(
              appBar: AppBar(title: const Text('Escrito')),
              body: const Center(child: Text('Amicus: Escrito')),
            ),
          ),
        ],
      ),

      // Revisión
      GoRoute(
        path: '/revision',
        name: 'revision',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Revisión')),
          body: const Center(child: Text('Revisar Datos')),
        ),
      ),

      // Firmado
      GoRoute(
        path: '/firmado',
        name: 'firmado',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Firmado')),
          body: const Center(child: Text('Firma Digital')),
        ),
      ),

      // Registro Exitoso
      GoRoute(
        path: '/registro-exitoso',
        name: 'registro-exitoso',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('¡Registro Exitoso!')),
        ),
      ),
    ],

    // Error page
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
});
