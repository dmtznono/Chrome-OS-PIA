import 'package:flutter/material.dart';

import '../../routes.dart';

/// Menú principal. Responsable: Int. 1.
/// Para agregar una opción, añade un elemento a la lista `_opciones`.
class PantallaMenu extends StatelessWidget {
  const PantallaMenu({super.key});

  static const List<_OpcionMenu> _opciones = [
    _OpcionMenu('AF1 - Arquitectura y fundamentos', Icons.memory, AppRoutes.af1),
    _OpcionMenu('AF2 - Procesos y concurrencia', Icons.account_tree, AppRoutes.af2),
    _OpcionMenu('AF3 - Memoria y archivos', Icons.folder, AppRoutes.af3),
    _OpcionMenu('AF4 - Seguridad y redes', Icons.security, AppRoutes.af4),
    _OpcionMenu('Equipo', Icons.groups, AppRoutes.equipo),
    _OpcionMenu('Referencias', Icons.menu_book, AppRoutes.referencias),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú principal'),
        actions: [
          IconButton(
            tooltip: 'Ir a inicio',
            icon: const Icon(Icons.home),
            onPressed: () => AppRoutes.irAInicio(context),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _opciones.length,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final o = _opciones[i];
          return Card(
            child: ListTile(
              leading: Icon(o.icono),
              title: Text(o.titulo),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, o.ruta),
            ),
          );
        },
      ),
    );
  }
}

class _OpcionMenu {
  final String titulo;
  final IconData icono;
  final String ruta;
  const _OpcionMenu(this.titulo, this.icono, this.ruta);
}
