import 'package:flutter/material.dart';

// 3 archivos de subtemas de la AF3
import 'memoria_almacenamiento_archivos.dart';
import 'administracion_memoria.dart';
import 'sistemas_archivos_almacenamiento.dart';
import '../../widgets/visor_pdf.dart';

/// Pantalla principal de AF3 - Memoria y archivos. Ruta: '/af3'.
class PantallaAF3 extends StatelessWidget {
  const PantallaAF3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AF3 - Memoria y archivos'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Memoria y archivos',
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

            // 1. Memoria, almacenamiento y sistemas de archivos
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MemoriaAlmacenamientoArchivosScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.storage),
              label: const Text('Memoria, almacenamiento y sistemas de archivos'),
            ),
            const SizedBox(height: 15),

            // 2. Administración de memoria
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdministracionMemoriaScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.memory),
              label: const Text('Administración de memoria en Chrome OS'),
            ),
            const SizedBox(height: 15),

            // 3. Sistemas de archivos y almacenamiento en diferentes dispositivos
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SistemasArchivosAlmacenamientoScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.folder_copy),
              label: const Text('Sistemas de archivos y almacenamiento'),
            ),
            const SizedBox(height: 25),
            // Documento PDF de la AF3
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisorPdf(
                      titulo: 'Documento AF3',
                      ruta: 'assets/pdfs/AF3.pdf',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Ver documento PDF de la AF3'),
            ),
          ],
        ),
      ),
    );
  }
}
