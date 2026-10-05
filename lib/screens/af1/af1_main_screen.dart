import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// Pantalla principal de AF1 - Arquitectura y fundamentos.
/// Responsable: Integrante 2. Ruta: '/af1'.
///
/// TODO (Int. 2): reemplazar el placeholder por el menú interactivo
/// con los temas de las fichas de los Int. 5, 6, 7 y 8.
/// Agrega tus demás pantallas en esta misma carpeta (screens/af1/).
class PantallaAF1 extends StatelessWidget {
  const PantallaAF1({super.key});

  @override
  Widget build(BuildContext context) {
    return const PantallaPlaceholder(
      titulo: 'AF1 - Arquitectura y fundamentos',
      descripcion: 'Contenido de AF1 sobre Chrome OS (pendiente).',
      icono: Icons.memory,
    );
  }
}
