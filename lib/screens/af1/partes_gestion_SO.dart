import 'package:flutter/material.dart';

class PartesGestionSO extends StatelessWidget {
  const PartesGestionSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partes de gestión del sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Módulos y subsistemas especializados del sistema operativo'
              'diseñados para administrar, planificar y supervisar recursos'
              'de hardware específicos: procesos, memoria RAM, almacenamiento'
              'secundario y dispositivos de entrada/salida (E/S).'
              'Son los "departamentos de administración" del sistema operativo.'
              'Un departamento se encarga de repartir el tiempo de trabajo del'
              'procesador, otro administra el espacio en la memoria RAM, otro'
              'organiza los archivos guardados y otro controla el teclado, la pantalla'
              'y los dispositivos USB.',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS divide sus áreas de gestión adaptadas a dispositivos'
              'ligeros y orientados a la nube:',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ExpansionTile(
              title: const Text('Gestión de procesos'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Asigna tiempos de CPU equilibrando las pestañas activas del navegador'
                    'frente a los procesos de fondo mediante el planificador del Kernel de Linux.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Gestión de memoria'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Implementa zRAM (compresión de memoria) y Tab Discarding para pausar'
                    'o liberar pestañas inactivas cuando la memoria se agota.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Gestión de almacenamiento'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Utiliza un sistema de archivos local cifrado por usuario (eCryptfs/fscrypt)'
                    'integrado directamente con la sincronización en Google Drive.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Gestión de dispositivos (E/S)'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Coordina periféricos, cámaras, pantallas táctiles y dispositivos de red mediante'
                    'controladores unificados del kernel de Linux. ',
                    style: TextStyle(
                      fontSize: 17,
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