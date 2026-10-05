import 'package:flutter/material.dart';

import '../../routes.dart';

/// Pantalla de bienvenida. Responsable: Int. 1 (esqueleto) / Int. 4 (diseño).
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.laptop_chromebook,
                  size: 96, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 16),
              Text('Chrome OS',
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8),
              const Text(
                'Aplicación educativa de Sistemas Operativos',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.menu),
                icon: const Icon(Icons.play_arrow),
                label: const Text('Ir al menú principal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
