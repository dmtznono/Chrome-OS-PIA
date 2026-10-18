import 'package:flutter/material.dart';

class ProcesosConcurrentesScreen extends StatelessWidget {
  const ProcesosConcurrentesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Procesos concurrentes en Android'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Definición conceptual y relaciones', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Los procesos concurrentes son aquellos que se están ejecutando en el mismo periodo de tiempo y usan los mismos recursos de la computadora (CPU, memoria y dispositivos). Se pueden relacionar de tres maneras principales:\n\n'
                    '1. Independientes: No tienen relación directa entre sí (ej. calculadora y reproductor de música).\n'
                    '2. Cooperantes: Se pasan información y colaboran para lograr un objetivo común.\n'
                    '3. Competidores: Intentan usar el mismo recurso o espacio de memoria, requiriendo arbitraje del sistema operativo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Aplicación en el Sistema Operativo', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'El sistema operativo utiliza una estructura modular donde el proceso principal gestiona servicios independientes (como pestañas, componentes gráficos o extensiones). Si una aplicación se bloquea de forma individual, el sistema permite cerrarla sin comprometer el funcionamiento general.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/procesos_concurrentes_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}