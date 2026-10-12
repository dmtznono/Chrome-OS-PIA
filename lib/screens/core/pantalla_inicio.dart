import 'package:flutter/material.dart';
import '../../routes.dart';

/// Pantalla de inicio: botón al menú y tabla de integrantes del equipo.
/// Responsable: Int. 1 (esqueleto) / Int. 4 (diseño).
///
/// Fotos: se buscan en 'assets/images/equipo/<matricula>.jpg'. Mientras no
/// existan (o no estén declaradas en pubspec.yaml) se muestra un ícono.
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  static const List<_Integrante> _equipo = [
    _Integrante('2173227', 'Chávez Romero Abner Daniel', 'IAS', '100%'),
    _Integrante('2145945', 'Dávila Gongora Leonardo', 'ITS', '100%'),
    _Integrante('2094613', 'Del Ángel Hernández Edgar Daniel', 'ITS', '100%'),
    _Integrante('2149169', 'Flores Dávila Andrea Sarahy', 'IAS', '100%'),
    _Integrante('2145905', 'Garza Jasso Erubiel Elías', 'IAS', '100%'),
    _Integrante('2145422', 'Marroquín Tobías José Eduardo', 'IAS', '100%'),
    _Integrante('2052641', 'Martínez Alvárez Alejandro', 'ITS', '80%'),
    _Integrante('2153829', 'Martínez García Donovan Alexander (Líder de equipo)',
        'IAS', '100%',
        lider: true),
    _Integrante('2147723', 'Molina Garcia Jorge Luis', 'ITS', '100%'),
    _Integrante('2145757', 'Morales Quintanilla Alonso', 'ITS', '70%'),
    _Integrante('2226953', 'Revuelta Martínez Carolina', 'IAS', '100%'),
    _Integrante('2149382', 'Ruiz Treviño Esdras Alexander', 'IAS', '100%'),
    _Integrante('2144697', 'Salazar Arzola Karla Nozomi', 'IAS', '100%'),
  ];

  static const _encabezados = [
    'Fotografía',
    'Matrícula',
    'Nombre',
    'Carrera',
    'Porcentaje',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FilledButton.icon(
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.menu),
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Ir al menú principal'),
                ),
                const SizedBox(height: 24),
                Table(
                  border: TableBorder.all(color: Colors.black54),
                  columnWidths: const {
                    0: FlexColumnWidth(1.3),
                    1: FlexColumnWidth(1.3),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1.3),
                  },
                  children: [
                    TableRow(
                      children: [
                        for (final e in _encabezados)
                          _celda(Text(
                            e,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                      ],
                    ),
                    for (final i in _equipo) _fila(i),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'A 09 de Octubre del 2026. San Nicolás de los Garza, '
                  'Nuevo León, México.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow _fila(_Integrante i) {
    return TableRow(
      children: [
        _celda(_foto(i.matricula)),
        _celda(Text(i.matricula, textAlign: TextAlign.center)),
        _celda(Text(
          i.nombre,
          textAlign: TextAlign.center,
          style: i.lider
              ? const TextStyle(backgroundColor: Color(0xFFFFF200))
              : null,
        )),
        _celda(Text(i.carrera, textAlign: TextAlign.center)),
        _celda(Text(i.porcentaje, textAlign: TextAlign.center)),
      ],
    );
  }

  Widget _celda(Widget hijo) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Align(alignment: Alignment.topCenter, child: hijo),
    );
  }

  Widget _foto(String matricula) {
    return SizedBox(
      width: 70,
      height: 80,
      child: Image.asset(
        'assets/images/equipo/$matricula.jpg',
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => Container(
          color: Colors.grey.shade300,
          child: const Icon(Icons.person, size: 40, color: Colors.grey),
        ),
      ),
    );
  }
}

class _Integrante {
  final String matricula;
  final String nombre;
  final String carrera;
  final String porcentaje;
  final bool lider;

  const _Integrante(
    this.matricula,
    this.nombre,
    this.carrera,
    this.porcentaje, {
    this.lider = false,
  });
}
