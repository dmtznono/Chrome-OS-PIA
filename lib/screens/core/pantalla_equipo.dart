
import 'package:flutter/material.dart';

class PantallaEquipo extends StatelessWidget {
  const PantallaEquipo({super.key});

  static const Color primaryColor = Color(0xFF405D8C);
  static const Color backgroundColor = Color(0xFFF8F7FC);

  static const List<Map<String, String>> integrantes = [
    {
      'nombre': 'Chávez Romero Daniel',
      'matricula': '2173227',
      'rol': 'Investigador',
      'contribucion':
          'Investigación y elaboración de contenidos informativos para las Actividades Fundamentales (AF1 - AF4).',
    },
    {
      'nombre': 'Dávila Góngora Leonardo',
      'matricula': '2145945',
      'rol': 'Programador',
      'contribucion':
          'Desarrollo de los módulos AF3 y AF4, integración de documentos PDF, implementación de la pantalla principal (portada) y vista de referencias. Coautor del manual técnico.',
    },
    {
      'nombre': 'Del Ángel Hernández Edgar Daniel',
      'matricula': '2094613',
      'rol': 'Programador',
      'contribucion':
          'Desarrollo e implementación de la pantalla correspondiente a la Actividad Fundamental 2.',
    },
    {
      'nombre': 'Flores Dávila Andrea Sarahy',
      'matricula': '2149169',
      'rol': 'Programador',
      'contribucion':
          'Desarrollo de la pantalla de la Actividad Fundamental 1 (Arquitectura y Fundamentos). Coautora del manual técnico.',
    },
    {
      'nombre': 'Garza Jasso Erubiel Elias',
      'matricula': '2145905',
      'rol': 'Investigador',
      'contribucion':
          'Investigación de temas clave, síntesis de información y apoyo en la estandarización del formato del manual técnico.',
    },
    {
      'nombre': 'Marroquín Tobías José Eduardo',
      'matricula': '2145422',
      'rol': 'Investigador',
      'contribucion':
          'Recopilación de información para las AF1-AF4 y coeditor del formato general del manual de usuario.',
    },
    {
      'nombre': 'Martínez Álvarez Alejandro',
      'matricula': '2052641',
      'rol': 'Investigador',
      'contribucion':
          'Responsable principal del diseño, estructura y formato del manual de usuario, así como del levantamiento de información.',
    },
    {
      'nombre': 'Martínez García Donovan Alexander',
      'matricula': '2153829',
      'rol': 'Programador',
      'contribucion':
          'Arquitectura base del sistema, desarrollo del menú principal interactivo y navegación a módulos (AF1-AF4, Equipo y Referencias). Coautor del manual técnico.',
    },
    {
      'nombre': 'Molina García Jorge Luis',
      'matricula': '2147723',
      'rol': 'Investigador',
      'contribucion':
          'Desarrollo de contenido técnico, redacción de información y diseño visual del manual de usuario.',
    },
    {
      'nombre': 'Morales Quintanilla Alonso',
      'matricula': '2145757',
      'rol': 'Investigador',
      'contribucion':
          'Recopilación, síntesis y estructuración de información técnica para el proyecto.',
    },
    {
      'nombre': 'Revuelta Martínez Carolina',
      'matricula': '2226953',
      'rol': 'Investigador',
      'contribucion':
          'Coordinadora general de redacción, formato y dirección editorial del manual de usuario, y colaboradora de contenido.',
    },
    {
      'nombre': 'Ruiz Treviño Esdras Alexander',
      'matricula': '2149382',
      'rol': 'Investigador',
      'contribucion':
          'Investigación, recopilación y validación de contenido técnico.',
    },
    {
      'nombre': 'Salazar Arzola Karla Nozomi',
      'matricula': '2144697',
      'rol': 'Investigador',
      'contribucion':
          'Coordinadora general de formato, diseño y dirección editorial del manual de usuario, y colaboradora de contenido.',
    },
  ];

  int get programadores =>
      integrantes.where((persona) => persona['rol'] == 'Programador').length;

  int get investigadores =>
      integrantes.where((persona) => persona['rol'] == 'Investigador').length;

  String iniciales(String nombre) {
    final partes = nombre.split(' ');
    if (partes.length >= 2) {
      return '${partes[0][0]}${partes[1][0]}'.toUpperCase();
    }
    return nombre.substring(0, 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Equipo de desarrollo',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: backgroundColor,
        foregroundColor: const Color(0xFF252936),
        elevation: 0,
        centerTitle: false,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final ancho = constraints.maxWidth;
            final columnas = ancho >= 1050
                ? 3
                : ancho >= 650
                    ? 2
                    : 1;

            final espacio = 16.0;
            final anchoTarjeta =
                (ancho - (espacio * (columnas - 1))) / columnas;

            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _encabezado(),
                      const SizedBox(height: 24),
                      _resumen(),
                      const SizedBox(height: 30),
                      const Text(
                        'Integrantes del proyecto',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF252936),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'personas que participaron en el '
                        'desarrollo de la aplicación y sus principales '
                        'responsabilidades.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xFF666B78),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: espacio,
                        runSpacing: espacio,
                        children: integrantes.map((persona) {
                          return SizedBox(
                            width: anchoTarjeta,
                            child: _tarjetaIntegrante(persona),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 28),
                      _pie(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _encabezado() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF344F7B),
            Color(0xFF5276A9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.groups_rounded,
            color: Colors.white,
            size: 42,
          ),
          const SizedBox(height: 18),
          const Text(
            'Nuestro equipo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Proyecto Integrador de Aprendizaje · Sistemas Operativos',
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.16),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              'Chrome OS · Aplicación educativa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _resumen() {
    return Row(
      children: [
        Expanded(
          child: _tarjetaResumen(
            cantidad: '${integrantes.length}',
            titulo: 'Integrantes',
            icono: Icons.groups_rounded,
            color: primaryColor,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _tarjetaResumen(
            cantidad: '$programadores',
            titulo: 'Programadores',
            icono: Icons.code_rounded,
            color: const Color(0xFF287B69),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _tarjetaResumen(
            cantidad: '$investigadores',
            titulo: 'Investigadores',
            icono: Icons.menu_book_rounded,
            color: const Color(0xFF9A6B35),
          ),
        ),
      ],
    );
  }

  Widget _tarjetaResumen({
    required String cantidad,
    required String titulo,
    required IconData icono,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE9EAF0)),
      ),
      child: Column(
        children: [
          Icon(icono, color: color, size: 25),
          const SizedBox(height: 8),
          Text(
            cantidad,
            style: TextStyle(
              color: color,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            titulo,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF626775),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tarjetaIntegrante(Map<String, String> persona) {
    final esProgramador = persona['rol'] == 'Programador';
    final colorRol = esProgramador
        ? const Color(0xFF287B69)
        : const Color(0xFF9A6B35);

    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE9EAF0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.035),
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: primaryColor.withOpacity(0.12),
                child: Text(
                  iniciales(persona['nombre']!),
                  style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  persona['nombre']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252936),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Icon(
                Icons.badge_outlined,
                size: 16,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 6),
              Text(
                'Matrícula: ${persona['matricula']}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF626775),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: colorRol.withOpacity(0.10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  esProgramador
                      ? Icons.code_rounded
                      : Icons.menu_book_rounded,
                  size: 14,
                  color: colorRol,
                ),
                const SizedBox(width: 5),
                Text(
                  persona['rol']!,
                  style: TextStyle(
                    color: colorRol,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Contribuciones',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xFF343A48),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            persona['contribucion']!,
            style: const TextStyle(
              fontSize: 13,
              height: 1.55,
              color: Color(0xFF626775),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pie() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFECEFF6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: primaryColor,
            size: 22,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Cada integrante contribuyó desde su área de trabajo '
              'para desarrollar los contenidos, la interfaz y los '
              'recursos de esta aplicación educativa.',
              style: TextStyle(
                fontSize: 13,
                height: 1.5,
                color: Color(0xFF454B59),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

