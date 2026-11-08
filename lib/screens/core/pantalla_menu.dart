import 'package:flutter/material.dart';

import '../../routes.dart';
import '../../widgets/visor_pdf.dart';

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

  /// Botones que abren un PDF de assets/pdfs/ (igual que "Ver PDF" en las AF).
  static const List<_OpcionPdf> _conclusiones = [
    _OpcionPdf('Conclusiones manual técnico', 'assets/pdfs/C_MT.pdf'),
    _OpcionPdf('Conclusiones manual usuario', 'assets/pdfs/C_MU.pdf'),
  ];

  /// Botón "Introducción" (primero del menú).
  static const _introduccion = _PantallaTexto(
    titulo: 'Introducción',
    parrafos: [
      'En la actualidad, los sistemas operativos son una parte esencial de los dispositivos electrónicos, ya que se encargan de administrar los recursos del equipo, permitir la ejecución de aplicaciones y facilitar la interacción con los usuarios. Su funcionamiento es fundamental para que los dispositivos puedan realizar diferentes tareas de manera organizada y eficiente, además de permitir la comunicación entre el hardware, el software y las personas que los utilizan. Con el avance de la tecnología, los sistemas operativos han evolucionado para adaptarse a las nuevas necesidades de los usuarios, incorporando herramientas, funciones y características que buscan mejorar la experiencia de uso y facilitar el acceso a diferentes recursos digitales.',
      'Dentro de esta evolución han surgido diversas alternativas, cada una con características y enfoques particulares. Entre ellas se encuentra Chrome OS, un sistema operativo desarrollado por Google y basado en el kernel de Linux, que representa una opción diferente para el uso de dispositivos electrónicos. Su desarrollo forma parte de los avances tecnológicos que buscan ofrecer nuevas formas de trabajar, acceder a aplicaciones y utilizar herramientas digitales, adaptándose a las necesidades actuales de los usuarios.',
    ],
  );

  /// Botón "Conclusión" (último del menú).
  static const _conclusion = _PantallaTexto(
    titulo: 'Conclusión',
    parrafos: [
      'Los sistemas operativos representan una parte fundamental en el desarrollo y funcionamiento de la tecnología, ya que permiten que los dispositivos electrónicos realicen sus actividades de manera adecuada, administrando sus recursos y proporcionando herramientas que facilitan las tareas de los usuarios. A través del estudio de Chrome OS, fue posible conocer una de las alternativas que han surgido como resultado de la evolución tecnológica, identificando sus características, su relación con el kernel de Linux y la manera en que busca ofrecer nuevas formas de interacción y acceso a los recursos digitales.',
    ],
  );

  Widget _botonTexto(BuildContext context, _PantallaTexto pantalla, IconData icono) {
    return Card(
      child: ListTile(
        leading: Icon(icono),
        title: Text(pantalla.titulo),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pantalla),
        ),
      ),
    );
  }

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
        itemCount: _opciones.length + _conclusiones.length + 2,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (context, indice) {
          if (indice == 0) {
            return _botonTexto(context, _introduccion, Icons.info_outline);
          }
          if (indice == _opciones.length + _conclusiones.length + 1) {
            return _botonTexto(context, _conclusion, Icons.flag);
          }
          final i = indice - 1;
          if (i >= _opciones.length) {
            final c = _conclusiones[i - _opciones.length];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.picture_as_pdf),
                title: Text(c.titulo),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        VisorPdf(titulo: c.titulo, ruta: c.ruta),
                  ),
                ),
              ),
            );
          }
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

class _OpcionPdf {
  final String titulo;
  final String ruta;
  const _OpcionPdf(this.titulo, this.ruta);
}

/// Pantalla de texto simple (Introducción / Conclusión).
class _PantallaTexto extends StatelessWidget {
  final String titulo;
  final List<String> parrafos;

  const _PantallaTexto({required this.titulo, required this.parrafos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        actions: [
          IconButton(
            tooltip: 'Ir a inicio',
            icon: const Icon(Icons.home),
            onPressed: () => AppRoutes.irAInicio(context),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          for (final p in parrafos) ...[
            Text(
              p,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}
