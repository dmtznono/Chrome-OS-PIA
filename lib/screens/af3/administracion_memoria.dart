import 'package:flutter/material.dart';

/// Subtema AF3: Administración de memoria en Chrome OS.
/// Contenido: ficha de contenido 2 del Integrante 2 (Avance 2).
class AdministracionMemoriaScreen extends StatelessWidget {
  const AdministracionMemoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Administración de memoria'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gestión de memoria en Chrome OS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ExpansionTile(
              title: const Text('Memoria RAM', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'La administración de memoria es la función fundamental del sistema operativo encargada de gestionar la jerarquía de memoria principal (RAM) y secundaria, asignando espacio a los procesos activos, realizando paginación/compresión cuando la RAM se agota y protegiendo el espacio de direcciones de cada programa.\n\n'
                    'Es como la mesa de trabajo de un estudiante: la RAM física es el espacio disponible sobre el escritorio. Si se llena de libros, en lugar de levantarte e ir hasta el estante lejano (almacenamiento en disco que es lento), Chrome OS usa "zRAM", que es como doblar y comprimir los papeles para que quepan el doble de hojas en la misma mesa sin perder velocidad.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Compresión zRAM', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Chrome OS utiliza el kernel de Linux con una estrategia avanzada de compresión de memoria basada en zRAM en lugar de depender fuertemente de un archivo swap en disco flash.\n\n'
                    'Chrome OS combina la gestión del kernel de Linux con la arquitectura de Chromium para administrar la RAM de forma 100% automática. Al no utilizar un archivo de intercambio (swap) tradicional que desgastaría la memoria flash eMMC/SSD, crea un bloque comprimido en la propia RAM (zRAM) con una relación de compresión cercana a 2:1.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Descarte de Pestañas', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Además, implementa "Tab Discarding" (Ahorro de Memoria), suspendiendo de forma autónoma las pestañas inactivas en segundo plano cuando detecta alta presión de RAM, liberando recursos sin cerrar la sesión del usuario.\n\n'
                    'Si la memoria sigue saturada, el sistema activa el descarte de pestañas inactivas (Tab Discarding), preservando su estado para que el equipo no sufra congelamientos.\n\n'
                    'Ejemplo práctico: Estar en una clase virtual por Google Meet mientras tienes abiertas 20 pestañas de investigación y la app de Spotify en segundo plano. Chrome OS mantiene la videollamada fluida asignándole RAM prioritaria y comprime o congela temporalmente las pestañas que no has visto en la última hora.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/af3_gestion_memoria_chromeos.png'),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Ilustración 1. Esquema de administración y optimización de memoria en Chrome OS.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
