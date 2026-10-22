import 'package:flutter/material.dart';

class ProcesosConcurrentesScreen extends StatelessWidget {
  const ProcesosConcurrentesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Procesos concurrentes'),
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
                    'Un proceso concurrente es una unidad de ejecución independiente con su propio espacio de direcciones y recursos asignados. Se relacionan como independientes, cooperantes o competidores al utilizar los recursos del hardware.',
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
                    'Chrome OS utiliza una arquitectura multiproceso muy característica donde cada pestaña del navegador y cada extensión corre en su propio proceso concurrente. Los usuarios pueden verificar y administrar estos procesos en tiempo real utilizando el Administrador de tareas integrado de Chrome OS (presionando las teclas Shift + Esc), el cual muestra de manera detallada el consumo de CPU, memoria y red de cada proceso de forma individual.',
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
