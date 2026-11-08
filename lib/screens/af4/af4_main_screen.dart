import 'package:flutter/material.dart';

import '../../widgets/visor_pdf.dart';

// 5 archivos de subtemas de la AF4
import 'amenazas_malware.dart';
import 'seguridad_prevencion.dart';
import 'administracion_riesgos.dart';
import 'recuperacion_powerwash.dart';
import 'intrusos_autenticacion.dart';

/// Pantalla principal de AF4 - Seguridad y redes. Ruta: '/af4'.
class PantallaAF4 extends StatelessWidget {
  const PantallaAF4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AF4 - Seguridad y redes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Seguridad y redes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Selecciona un subtema para consultar la información.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),

            // 1. Amenazas informáticas y tipos de malware
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AmenazasMalwareScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.bug_report),
              label: const Text('Amenazas informáticas y tipos de malware'),
            ),
            const SizedBox(height: 15),

            // 2. Riesgos de seguridad en Chrome OS y medidas preventivas
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SeguridadPrevencionScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.shield),
              label: const Text('Seguridad en Chrome OS y prevención'),
            ),
            const SizedBox(height: 15),

            // 3. Administración de riesgos, amenazas y protección de recursos
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdministracionRiesgosScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.warning_amber),
              label: const Text('Administración de riesgos y protección de recursos'),
            ),
            const SizedBox(height: 15),

            // 4. Recuperación del dispositivo, Powerwash e incidentes
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecuperacionPowerwashScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.restore),
              label: const Text('Recuperación, Powerwash e incidentes'),
            ),
            const SizedBox(height: 15),

            // 5. Intrusos, ataques y autenticación
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IntrusosAutenticacionScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.person_off),
              label: const Text('Intrusos, ataques y autenticación'),
            ),
            const SizedBox(height: 25),

            // Documento PDF de la AF4
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisorPdf(
                      titulo: 'Documento AF4',
                      ruta: 'assets/pdfs/AF4.pdf',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Ver documento PDF de la AF4'),
            ),
          ],
        ),
      ),
    );
  }
}
