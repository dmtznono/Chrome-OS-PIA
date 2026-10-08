import 'package:flutter/material.dart';

import '../../widgets/pantalla_placeholder.dart';

import 'def_SO.dart';
import 'comp_SO.dart';
import 'manejo_rec_SO.dart';
import 'partes_SO.dart';
import 'term_basic_SO.dart';
import 'partes_gestion_SO.dart';
/// Pantalla principal de AF1 - Arquitectura y fundamentos.
/// Responsable: Integrante 2. Ruta: '/af1'.
///
/// TODO (Int. 2): reemplazar el placeholder por el menú interactivo
/// con los temas de las fichas de los Int. 5, 6, 7 y 8.
/// Agrega tus demás pantallas en esta misma carpeta (screens/af1/).
class PantallaAF1 extends StatelessWidget {
  const PantallaAF1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AF1 - Arquitectura y fundamentos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Text(
              'Arquitectura y fundamentos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Selecciona un tema para consultar la información.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // 1. Definicion de sistema operativo
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DefSO(),
                  ),
                );
              },
              icon: const Icon(Icons.computer),
              label: const Text('Definición de sistema operativo'),
            ),

            const SizedBox(height: 15),

            // 2. Componentes del SO y sus funciones
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CompSO(),
                  ),
                );
              },
              icon: const Icon(Icons.settings),
              label: const Text('Componentes del SO y sus funciones'),
            ),

            const SizedBox(height: 15),

            // 3. Manejo de recursos
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManejoRecursos(),
                  ),
                );
              },
              icon: const Icon(Icons.memory),
              label: const Text('Manejo de recursos'),
            ),

            const SizedBox(height: 15),

            // 4. Partes del SO
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PartesSO(),
                  ),
                );
              },
              icon: const Icon(Icons.account_tree),
              label: const Text('Partes del SO'),
            ),

            const SizedBox(height: 15),

            // 5. Terminología básica
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerminologiaBasica(),
                  ),
                );
              },
              icon: const Icon(Icons.menu_book),
              label: const Text('Terminología básica'),
            ),

            const SizedBox(height: 15),

            // 6. Partes de gestión
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PartesGestion(),
                  ),
                );
              },
              icon: const Icon(Icons.admin_panel_settings),
              label: const Text('Partes de gestión'),
            ),
          ],
        ),
      ),
    );
  }
}
