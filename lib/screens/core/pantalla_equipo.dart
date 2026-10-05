import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// "Acerca del equipo". Esqueleto: Int. 1 / Contenido final: Int. 4.
class PantallaEquipo extends StatelessWidget {
  const PantallaEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO (Int. 4): listar a los 13 integrantes con sus roles.
    return const PantallaPlaceholder(
      titulo: 'Acerca del equipo',
      descripcion: 'Aquí irán los integrantes del equipo y sus roles.',
      icono: Icons.groups,
    );
  }
}
