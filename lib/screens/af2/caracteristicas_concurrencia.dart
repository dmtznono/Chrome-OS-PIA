import 'package:flutter/material.dart';

class CaracteristicasConcurrenciaScreen extends StatelessWidget {
  const CaracteristicasConcurrenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Características de la concurrencia'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Pilares de la ejecución concurrente', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'La ejecución concurrente permite que múltiples hilos o procesos progresen de manera coordinada utilizando intervalos de tiempo (time slices) en un solo núcleo, o mediante paralelismo real en arquitecturas multinúcleo. Para mantener la estabilidad, se divide en tres partes:\n\n'
                    '1. Solapamiento: Las tareas avanzan de forma intercalada dentro de un mismo periodo temporal.\n'
                    '2. Aislamiento: Cada proceso opera en un espacio de memoria delimitado y protegido, evitando corrupción de datos.\n'
                    '3. Sincronización: Mecanismos de control para coordinar el acceso cuando compiten por recursos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Ejemplo y Aplicación en el SO', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Ejemplo práctico: Escuchar música en streaming mientras se edita un documento en línea. Ambas actividades conviven sin interrumpirse. En el sistema operativo, el aislamiento evita que si una pestaña o aplicación pesada experimenta un fallo, se congele el resto del equipo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/caracteristicas_concurrencia_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}