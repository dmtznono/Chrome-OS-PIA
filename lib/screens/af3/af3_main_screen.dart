import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// Pantalla principal de AF3 - Memoria y archivos. Ruta: '/af3'.
/// Pendiente de asignación (no está en el alcance del Avance 1).
class PantallaAF3 extends StatelessWidget {
  const PantallaAF3({super.key});

  @override
  Widget build(BuildContext context) {
    return const PantallaPlaceholder(
      titulo: 'AF3 - Memoria y archivos',
      descripcion: 'Contenido de AF3 sobre Chrome OS (pendiente).',
      icono: Icons.folder,
    );
  }
}
