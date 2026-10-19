import 'package:flutter/material.dart';

class VentajasEjecucionScreen extends StatelessWidget {
  const VentajasEjecucionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventajas de la ejecución concurrente'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Beneficios en rendimiento y optimización', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'La ventaja principal es eliminar los tiempos muertos de la computadora. Si un programa necesita descargar un archivo, la velocidad depende de la red y no del chip; en lugar de dejar el procesador inactivo, el sistema asigna ese tiempo a otra tarea. Sus beneficios clave son:\n\n'
                    '• Respuesta rápida: El teclado, pantalla y táctil no se congelan ante procesos pesados.\n'
                    '• Aprovechamiento de la CPU: El procesador trabaja constantemente sin esperas innecesarias de red o disco.\n'
                    '• Multitarea fluida: Permite alternar eficazmente entre múltiples entornos de ejecución.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Aplicación práctica', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Ejemplo: Estar en una videollamada mientras se guardan cambios en la nube de forma simultánea. El sistema asigna prioridades dinámicas para asegurar que el audio y el vídeo de la llamada no sufran cortes ni distorsiones.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/ventajas_ejecucion_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}