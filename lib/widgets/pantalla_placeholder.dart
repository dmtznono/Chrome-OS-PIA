import 'package:flutter/material.dart';

import '../routes.dart';

/// Plantilla temporal para las pantallas esqueleto.
///
/// Muestra un AppBar con botón de regresar automático, un título, una
/// descripción de prueba y un botón "Ir a inicio".
///
/// NOTA para el Int. 4: puedes reemplazar este widget por los definitivos
/// (HeaderWidget, InfoCard, CustomButton). Mientras tanto, los Int. 2 y 3
/// pueden reemplazar el `body` de sus pantallas sin usar esta plantilla.
class PantallaPlaceholder extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final List<Widget> acciones;

  const PantallaPlaceholder({
    super.key,
    required this.titulo,
    required this.descripcion,
    this.icono = Icons.construction,
    this.acciones = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        // El botón "regresar" aparece solo cuando hay pantalla anterior.
        actions: [
          IconButton(
            tooltip: 'Ir a inicio',
            icon: const Icon(Icons.home),
            onPressed: () => AppRoutes.irAInicio(context),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icono, size: 72, color: Theme.of(context).colorScheme.primary),
                const SizedBox(height: 16),
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(descripcion, textAlign: TextAlign.center),
                const SizedBox(height: 24),
                ...acciones,
                OutlinedButton.icon(
                  onPressed: () => Navigator.maybePop(context),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Regresar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
