import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';
import '../../widgets/visor_pdf.dart';

/// Pantalla principal de AF4 - Seguridad y redes. Ruta: '/af4'.
/// Pendiente de asignación (no está en el alcance del Avance 1).
class PantallaAF4 extends StatelessWidget {
  const PantallaAF4({super.key});

  @override
  Widget build(BuildContext context) {
    return PantallaPlaceholder(
      titulo: 'AF4 - Seguridad y redes',
      descripcion: 'Contenido de AF4 sobre Chrome OS (pendiente).',
      icono: Icons.security,
      acciones: [
        // Documento PDF de la AF4
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VisorPdf(
                  titulo: 'Documento AF4',
                  ruta: 'assets/pdfs/EQ3_AF4_DOC_1.pdf',
                ),
              ),
            );
          },
          icon: const Icon(Icons.picture_as_pdf),
          label: const Text('Ver documento PDF de la AF4'),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
