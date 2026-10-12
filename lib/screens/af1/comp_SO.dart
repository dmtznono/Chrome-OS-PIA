import 'package:flutter/material.dart';

class CompSO extends StatelessWidget {
  const CompSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes del sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Los componentes de un sistema operativo son los módulos '
              'que trabajan en conjunto para administrar el hardware y '
              'ofrecer servicios a las aplicaciones y al usuario, '
              'funcionando como un gerente que reparte los recursos de la '
              'computadora. Cada componente se encarga de una parte '
              'específica del trabajo: los principales son el kernel, la '
              'gestión de procesos para ejecutar programas, la gestión de '
              'memoria para asignar recursos, el sistema de archivos para '
              'guardar información y la gestión de dispositivos (E/S) para '
              'comunicarse con el hardware.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            ExpansionTile(
              title: const Text('Chrome OS', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Chrome OS utiliza el kernel de Linux como base y, sobre él, '
                    'el navegador Chrome como interfaz principal y plataforma de '
                    'aplicaciones. Por ejemplo, abrir un documento de Google Docs '
                    'en un Chromebook participan todos los componentes: el kernel '
                    'coordina el hardware, un proceso ejecuta la pestaña, se asigna '
                    'memoria, el archivo se guarda y el teclado y la pantalla responden.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/componentesOS.jpeg',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}