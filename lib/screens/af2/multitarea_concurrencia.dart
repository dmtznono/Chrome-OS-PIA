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
            const Text(
              'La multitarea es la capacidad del sistema operativo para ejecutar y gestionar múltiples procesos al mismo tiempo, compartiendo los recursos del hardware. La concurrencia ocurre cuando varias secuencias de instrucciones avanzan su ejecución en periodos de tiempo superpuestos.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, height: 1.5),
            ),
            const SizedBox(height: 20),
            ExpansionTile(
              title: const Text('Android', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'En Android, la multitarea se gestiona mediante un ciclo de vida de aplicaciones y el uso de hilos en segundo plano para evitar que la interfaz de usuario se congele mientras se realizan operaciones pesadas como peticiones de red.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset(
                  'assets/images/multitarea_android.png',
                  errorBuilder: (context, error, stackTrace) => Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.grey[200],
                    child: const Text('Imagen: assets/images/multitarea_android.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}