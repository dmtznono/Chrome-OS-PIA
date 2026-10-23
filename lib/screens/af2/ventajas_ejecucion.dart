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
                    'La ventaja principal es eliminar los tiempos muertos de la computadora. Cuando un programa espera datos de red o disco, el sistema asigna ese tiempo de procesamiento a otra tarea útil, logrando:\n\n'
                    '• Respuesta rápida: La interfaz y los elementos táctiles o de teclado no se bloquean.\n'
                    '• Aprovechamiento óptimo de la CPU: El procesador trabaja de manera constante sin desperdiciar ciclos valiosos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Chrome OS', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Para Chrome OS, la ejecución concurrente es vital dado que está optimizado para equipos ligeros (Chromebooks). Permite mantener múltiples pestañas abiertas, sincronizar archivos con Google Drive en segundo plano y reproducir contenido multimedia simultáneamente sin que el sistema pierda velocidad ni agilidad en la respuesta al usuario.',
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
