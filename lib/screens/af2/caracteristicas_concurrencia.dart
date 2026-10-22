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
                    'La ejecución concurrente permite que múltiples procesos progresen de manera coordinada mediante intervalos de tiempo (time slices) o paralelismo real. Sus características principales son:\n\n'
                    '1. Solapamiento: Las tareas avanzan de forma intercalada en un mismo periodo temporal.\n'
                    '2. Aislamiento: Cada proceso opera en un espacio de memoria delimitado y protegido.\n'
                    '3. Sincronización: Mecanismos para coordinar el acceso cuando compiten por recursos.',
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
                    'En Chrome OS, la característica fundamental es el fuerte aislamiento por procesos (Sandboxing). Cada pestaña o aplicación web corre en un entorno aislado de espacio de memoria protegido. Gracias a esto, si una página web se congela o experimenta un error crítico, el aislamiento impide que afecte la estabilidad global del sistema operativo o ponga en riesgo los datos del usuario.',
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
