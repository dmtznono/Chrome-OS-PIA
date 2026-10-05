import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// Pantalla principal de AF4 - Seguridad y redes. Ruta: '/af4'.
/// Pendiente de asignación (no está en el alcance del Avance 1).
class PantallaAF4 extends StatelessWidget {
  const PantallaAF4({super.key});

  @override
  Widget build(BuildContext context) {
    return const PantallaPlaceholder(
      titulo: 'AF4 - Seguridad y redes',
      descripcion: 'Contenido de AF4 sobre Chrome OS (pendiente).',
      icono: Icons.security,
    );
  }
}
