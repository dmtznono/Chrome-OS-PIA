import 'package:flutter/material.dart';

import 'routes.dart';

/// Punto de entrada de la aplicación.
/// Responsable: Integrante 1 (Arquitecto).
void main() {
  runApp(const ChromeOsApp());
}

class ChromeOsApp extends StatelessWidget {
  const ChromeOsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chrome OS - Sistemas Operativos',
      debugShowCheckedModeBanner: false,
      // TODO (Int. 4): reemplazar este tema por la paleta definitiva.
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A73E8)),
      ),
      initialRoute: AppRoutes.inicio,
      routes: AppRoutes.map,
    );
  }
}
