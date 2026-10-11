import 'package:flutter/material.dart';

import 'def_SO.dart';
import 'comp_SO.dart';
import 'funciones_SO.dart';
import 'manejo_rec_SO.dart';
import 'partes_SO.dart';
import 'term_basic_SO.dart';
import 'partes_gestion_SO.dart';

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

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FuncionesSO(),
                  ),
                );
              },
              icon: const Icon(Icons.functions),
              label: const Text('Funciones del SO'),
            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManRecursosSO(),
                  ),
                );
              },
              icon: const Icon(Icons.memory),
              label: const Text('Manejo de recursos'),
            ),

            const SizedBox(height: 15),

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

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerminologiaBasicaSO(),
                  ),
                );
              },
              icon: const Icon(Icons.menu_book),
              label: const Text('Terminología básica'),
            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PartesGestionSO(),
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