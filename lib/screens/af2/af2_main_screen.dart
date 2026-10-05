import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// Pantalla principal de AF2 - Procesos y concurrencia.
/// Responsable: Integrante 3. Ruta: '/af2'.
///
/// TODO (Int. 3): reemplazar el placeholder por el menú interactivo
/// con los temas de las fichas de los Int. 9, 10, 11, 12 y 13.
/// Agrega tus demás pantallas en esta misma carpeta (screens/af2/).
class PantallaAF2 extends StatelessWidget {
  const PantallaAF2({super.key});

  @override
  Widget build(BuildContext context) {
    return const PantallaPlaceholder(
      titulo: 'AF2 - Procesos y concurrencia',
      descripcion: 'Contenido de AF2 sobre Chrome OS (pendiente).',
      icono: Icons.account_tree,
    );
  }
}
