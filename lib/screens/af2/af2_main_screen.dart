import 'package:flutter/material.dart';

// 7 archivos de subtemas de la AF2
import 'multitarea_concurrencia.dart';
import 'tipos_concurrencia.dart';
import 'modelos_programacion.dart';
import 'caracteristicas_concurrencia.dart';
import 'ventajas_ejecucion.dart';
import 'procesos_concurrentes.dart';
import 'estados_transiciones.dart';
import '../../widgets/visor_pdf.dart';

class PantallaAF2 extends StatelessWidget {
  const PantallaAF2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AF2 - Procesos y concurrencia'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Procesos y concurrencia',
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

            // 1. Multitarea y concurrencia
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MultitareaConcurrenciaScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.layers),
              label: const Text('Multitarea y concurrencia en Android'),
            ),
            const SizedBox(height: 15),

            // 2. Tipos de concurrencia
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TiposConcurrenciaScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.merge_type),
              label: const Text('Tipos de concurrencia en Android'),
            ),
            const SizedBox(height: 15),

            // 3. Modelos de programación concurrente
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModelosProgramacionScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.code),
              label: const Text('Modelos de programación concurrente'),
            ),
            const SizedBox(height: 15),

            // 4. Características de la concurrencia
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CaracteristicasConcurrenciaScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.featured_play_list),
              label: const Text('Características de la concurrencia'),
            ),
            const SizedBox(height: 15),

            // 5. Ventajas de la ejecución concurrente
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VentajasEjecucionScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.thumb_up),
              label: const Text('Ventajas de la ejecución concurrente'),
            ),
            const SizedBox(height: 15),

            // 6. Procesos concurrentes
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProcesosConcurrentesScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.memory),
              label: const Text('Procesos concurrentes en Android'),
            ),
            const SizedBox(height: 15),

            // 7. Estados y transiciones de un proceso
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EstadosTransicionesScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.sync_alt),
              label: const Text('Estados y transiciones de un proceso'),
            ),
            const SizedBox(height: 25),
            // Documento PDF de la AF2
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisorPdf(
                      titulo: 'Documento AF2',
                      ruta: 'assets/pdfs/AF2.pdf',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Ver documento PDF de la AF2'),
            ),
          ],
        ),
      ),
    );
  }
}
