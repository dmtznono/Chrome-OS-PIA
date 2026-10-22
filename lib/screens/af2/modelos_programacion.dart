import 'package:flutter/material.dart';

class ModelosProgramacionScreen extends StatelessWidget {
  const ModelosProgramacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelos de programación concurrente'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Memoria Compartida y Paso de Mensajes', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Los modelos de programación concurrente son formas de organizar un programa para que varias tareas avancen de manera concurrente y se comuniquen o coordinen entre sí.\n\n'
                    '• Memoria compartida: Varias tareas acceden a una misma zona de memoria común para intercambiar datos, requiriendo mecanismos estrictos de sincronización para evitar conflictos.\n\n'
                    '• Paso de mensajes: Las tareas se comunican enviándose información mediante mensajes estructurados, manteniendo cada una su propia memoria privada.\n\n'
                    'Analogía: La memoria compartida es como varias personas escribiendo sobre el mismo documento; el paso de mensajes es cuando cada persona tiene su propio documento y se envían notas entre ellas.',
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
                    'Chrome OS coordina la comunicación entre sus componentes utilizando ambos modelos de programación. Los hilos internos de un mismo proceso del navegador utilizan memoria compartida sincronizada, mientras que los distintos procesos independientes (como las extensiones, el shell de comandos o las pestañas del navegador) se comunican de forma segura mediante paso de mensajes estructurados gestionados por el núcleo de Linux.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/modelos_programacion_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
