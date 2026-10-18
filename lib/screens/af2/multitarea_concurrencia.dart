import 'package:flutter/material.dart';

class MultitareaConcurrenciaScreen extends StatelessWidget {
  const MultitareaConcurrenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multitarea y concurrencia en Android'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Definición conceptual', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'La multitarea es la capacidad del sistema operativo para ejecutar y gestionar múltiples procesos al mismo tiempo, compartiendo los recursos del hardware. La concurrencia ocurre cuando varias secuencias de instrucciones avanzan su ejecución en periodos de tiempo superpuestos, gestionadas por el planificador (scheduler) del núcleo del sistema.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Explicación y Ejemplo Práctico', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Imagina que eres un chef en una cocina: la multitarea es tu habilidad para cocinar una sopa, asar carne y hornear un pastel al mismo tiempo. La concurrencia es cómo te mueves rápidamente entre revolver la sopa y revisar el horno para que todo avance sin que nada se queme.\n\n'
                    'Ejemplo práctico en el sistema: Tener abierta una videollamada en una aplicación de comunicación, un documento de texto abierto y música reproduciéndose en segundo plano. Si una aplicación falla, las demás continúan funcionando gracias a que son procesos aislados.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Aplicación en Android / Arquitectura', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Android utiliza un núcleo basado en Linux que maneja la concurrencia de forma nativa mediante una arquitectura multi-proceso. El sistema operativo aísla cada aplicación, servicio y actividad en su propio proceso independiente, asignando ciclos de CPU de manera concurrente para garantizar estabilidad y rendimiento.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/multitarea_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
