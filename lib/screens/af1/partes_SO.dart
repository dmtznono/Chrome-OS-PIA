import 'package:flutter/material.dart';

class PartesSO extends StatelessWidget {
  const PartesSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partes de un sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text( 
              'El sistema operativo es un conjunto de programas. '
              'Una parte vive en la memoria principal e incluye '
              'el kernel (núcleo), que contiene las funciones más '
              'usadas; el resto de la memoria guarda programas y '
              'datos de usuario. Dentro del kernel trabajan las partes '
              'que administran cada recurso: la planificación del procesador, '
              'la gestión de memoria y la gestión de ficheros.'
              '\n\n'
              'El sistema operativo no es una sola pieza: es un conjunto de '
              'partes que cooperan. En Chrome OS, unas partes controlan '
              'directamente el hardware y otras son programas de usuario que '
              'compiten por los mismos recursos. Todas comparten un solo equipo '
              'con poca memoria y poco disco.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Chrome OS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 10),

            Image.asset(
              'assets/images/partesOS.jpeg',
              width: double.infinity,
            ),

            
            const SizedBox(height: 15),

            ExpansionTile(
              title: const Text('Kernel de linux', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Controla el hardware. En él están el planificador de CPU, '
                    'el soporte de memoria comprimida (zRAM) y el aviso de poca '
                    'memoria que recibe el navegador.',
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
              title: const Text('Navegador Chrome', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Es la interfaz principal. Mueve cada pestaña entre primer '
                    'y segundo plano y descarta pestañas inactivas cuando falta '
                    'memoria.',
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
              title: const Text('Apps de android y Linux', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'se ejecutan aparte del navegador, pero usan el mismo almacenamiento '
                    'interno; el sistema también limpia su caché cuando falta espacio.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
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
