import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

/// Referencias bibliográficas (APA). Esqueleto: Int. 1.
class PantallaReferencias extends StatelessWidget {
  const PantallaReferencias({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: concentrar las fuentes APA de las fichas de contenido.
    return const PantallaPlaceholder(
      titulo: 'Referencias',
      descripcion: 'Aquí irán las fuentes bibliográficas en formato APA.',
      icono: Icons.menu_book,
    );
  }
}
