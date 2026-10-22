import 'package:flutter/material.dart';

class EstadosTransicionesScreen extends StatelessWidget {
  const EstadosTransicionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estados y transiciones de un proceso'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Ciclo de vida y los 5 Estados', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'A lo largo de su vida, un proceso pasa por distintos estados fundamentales: Nuevo, Listo, En ejecución, Bloqueado y Terminado, gestionados mediante transiciones controladas por el kernel.\n\n'
                    'Analogía de la fila de un banco:\n'
                    '• Nuevo: Acabas de llegar y te registran.\n'
                    '• Listo: Estás formado esperando tu turno de atención.\n'
                    '• En ejecución: Te toca la ventanilla; estás usando el CPU.\n'
                    '• Bloqueado: Falta un documento u operación de E/S y debes esperar para continuar.\n'
                    '• Terminado: Concluyó el trámite y finaliza el proceso.',
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
                    'En Chrome OS, los procesos de las pestañas y aplicaciones transicionan constantemente entre estos estados. Dado que los Chromebooks suelen operar con recursos de memoria RAM limitados, cuando una pestaña pasa mucho tiempo en estado bloqueado o inactivo, Chrome OS optimiza el rendimiento utilizando memoria virtual comprimida (zram) o descartando de forma temporal el proceso de la pestaña inactiva para liberar recursos, recargándola automáticamente cuando el usuario vuelve a seleccionarla.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/estados_transiciones_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
