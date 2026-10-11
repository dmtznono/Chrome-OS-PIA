import 'package:flutter/material.dart';

class TerminologiaBasicaSO extends StatelessWidget {
  const TerminologiaBasicaSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminología básica del sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'El conjunto de vocabulario técnico, conceptos y abstracciones '
              'fundamentales que definen las estructuras, entidades y mecanismos '
              'de ejecución dentro de la arquitectura de un sistema operativo.'
              '\n\n'
              'Es el "diccionario" técnico que usan los desarrolladores e ingenieros '
              'para describir cómo funciona la computadora por dentro. Define qué es '
              'el núcleo, cómo se aislan los programas para que no fallen juntos y '
              'de qué manera se ejecutan las aplicaciones sin interferir entre sí. ',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS utiliza una terminología especializada basada en '
              'su arquitectura híbrida de Linux, web y virtualización:',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            ExpansionTile(
              title: const Text('Kernel de linux', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'El núcleo subyacente que controla el hardware '
                    'y administralos recursos básicos. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Sandboxing', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Técnica de seguridad donde cada pestaña de Chromehardware '
                    'y proceso se ejecuta en un "arenero" cerrado sin acceso '
                    'directo al resto del sistema.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Daemon', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Procesos del sistema que se ejecutan en segundo plano '
                    'sin interfaz de usuario (ej. session_manager, cros_healthd).',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('ARC++ / ARCVM', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Entorno de ejecución mediante contenedores y máquinas '
                    'virtuales ligeras para ejecutar aplicaciones de Android '
                    'de forma segura.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('CrosVM', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Monitor de máquina virtual basado en KVM utilizado para '
                    'ejecutar entornos Linux completos (Crostini) dentro de '
                    'Chrome OS.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Image.asset(
              'assets/images/PgestionOS.jpeg',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}