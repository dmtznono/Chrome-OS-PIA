import 'package:flutter/material.dart';

class TiposConcurrenciaScreen extends StatelessWidget {
  const TiposConcurrenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos de concurrencia en Android'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Concurrencia Aparente vs Concurrencia Real', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '• Concurrencia aparente (intercalación): Un solo núcleo de CPU alterna rápidamente entre múltiples tareas mediante cambios de contexto (context switch), dando la ilusión absoluta de simultaneidad.\n\n'
                    '• Concurrencia real (paralelismo): Múltiples núcleos de CPU ejecutan diferentes tareas exactamente en el mismo instante de tiempo.\n\n'
                    'Analogía: La concurrencia aparente es como un solo cajero de supermercado atendiendo rápidamente a varios clientes por turnos; el paralelismo es tener múltiples cajeros atendiendo a la vez.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Aplicación en dispositivos móviles', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'En los procesadores multinúcleo actuales, Android aprovecha la concurrencia real asignando diferentes aplicaciones a distintos núcleos. A nivel de procesos y hilos (threads), el sistema distribuye la carga para que las tareas en segundo plano no interfieran con la fluidez visual de la interfaz de usuario.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Image.asset('assets/images/tipos_concurrencia_android.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}