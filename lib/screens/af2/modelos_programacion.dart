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
                    '• Memoria compartida: Varias tareas pueden acceder a una misma zona de memoria común para intercambiar datos. Requiere control de acceso para evitar conflictos.\n\n'
                    '• Paso de mensajes: Las tareas se comunican enviándose información mediante mensajes estructurados, manteniendo cada una su propia memoria privada sin requerir acceso directo compartido.\n\n'
                    'Analogía: La memoria compartida es como varias personas escribiendo sobre el mismo documento; el paso de mensajes es cuando cada persona tiene su propio documento y se envían notas entre ellas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Aplicación y Ejemplo Práctico', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'El sistema operativo necesita administrar diferentes actividades simultáneas (como consultar una página, reproducir contenido multimedia o redactar apuntes). Si las tareas requieren información común, controlan el acceso compartido; si operan de forma separada, intercambian datos mediante mensajes controlados.',
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