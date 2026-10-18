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
                    'A lo largo de su vida, un proceso pasa por distintos estados según sus necesidades. Analogía de la fila de un banco:\n\n'
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
              title: const Text('Transiciones y Optimización de Memoria', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Las transiciones clave incluyen de Nuevo a Listo (admitir), de Listo a Ejecución (despachar), de Ejecución a Bloqueado (espera de E/S o red) y de Ejecución a Terminado. Los procesos pasan gran parte del tiempo en espera de datos de red, y si el equipo escasea de memoria, el sistema puede descartar elementos inactivos y recargarlos al regresar a ellos.',
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