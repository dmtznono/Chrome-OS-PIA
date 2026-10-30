import 'package:flutter/material.dart';

import '../../routes.dart';

/// Pantalla de referencias bibliográficas (formato APA), agrupadas por AF y
/// ordenadas alfabéticamente dentro de cada grupo. Ruta: '/referencias'.
class PantallaReferencias extends StatelessWidget {
  const PantallaReferencias({super.key});

  static const List<_GrupoReferencias> _grupos = [
    _GrupoReferencias('AF1 - Arquitectura y fundamentos', Icons.memory, [
      _Referencia('', 'Arquitectura de la plataforma', '. (s. f.). Android Developers. https://developer.android.com/guide/platform?hl=es-419'),
      _Referencia('', 'Arquitectura iOS', '. (s. f.). https://ios-sistema.blogspot.com/p/arquitectura-ios.html'),
      _Referencia('', 'Asignación de memoria entre procesos', '. (s. f.). Android Developers. https://developer.android.com/topic/performance/memory-management?hl=es-419'),
      _Referencia('GQ Informática. (2024, 19 mayo). ', 'HarmonyOS: Todo lo que necesitas saber', '. https://gqinformatica.com/blog/informatica/harmonyos-informacion-completa/'),
      _Referencia('Llaven, D. S. (2016). ', 'Sistemas Operativos: Panorama para ingeniería en computación e informática', '. Grupo Editorial Patria.'),
      _Referencia('PasionMovil, & PasionMovil. (2026, 13 junio). ', 'Chips LogicFolding y HarmonyOS: las armas de Huawei', '. PasionMóvil » Tecnología móvil desde 1999. https://www.pasionmovil.com/plataformas/android/huawei-harmonyos-memoria-ram-optimizacion/'),
      _Referencia('Posadasherschel, & Posadasherschel. (2024, 15 noviembre). ', '¿Alguna vez te has preguntado cómo funciona la gestión de memoria en Leer más', '. Herschel González. https://herschelgonzalez.com/gestion-de-memoria-en-linux-todo-lo-que-necesitas-saber/'),
      _Referencia('Posadasherschel, & Posadasherschel. (2024b, noviembre 15). ', '¿Alguna vez te has preguntado cómo funciona la gestión de memoria en Leer más', '. Herschel González. https://herschelgonzalez.com/gestion-de-memoria-en-windows-todo-lo-que-necesitas-saber/'),
      _Referencia('', '¿Qué es la arquitectura del sistema operativo Windows?', ' (s. f.). https://todosloshechos.es/que-es-la-arquitectura-del-sistema-operativo-windows'),
      _Referencia('Stallings, W. (2005). ', 'Sistemas operativos: Aspectos internos y principios de diseño', ' (5.ª ed.). Pearson Educación.'),
      _Referencia('Tanenbaum, A. S. (2003). ', 'Sistemas operativos modernos', ' (3.ª ed.). Pearson Educación.'),
      _Referencia('Tanenbaum, A. S. (2008). ', 'Modern operating systems', ' (3rd ed.). Pearson Prentice Hall.'),
      _Referencia('Vázquez Gómez, J. B. (2012). ', 'Introducción a la informática', '. Red Tercer Milenio.'),
    ]),
    _GrupoReferencias('AF2 - Procesos y concurrencia', Icons.account_tree, [
      _Referencia('Carretero Pérez, J., García Carballeira, F., De Miguel Anasagasti, P., & Pérez Costoya, F. (2007). ', 'Sistemas operativos: una visión aplicada', ' (2.ª ed.). McGraw-Hill.'),
      _Referencia('Escoí, F. D. M., Villaplana, E. A., Minguet, A. R. E., Saiz, P. G., García-Fornes, A., de Juan Marín, R., & Roig, J. S. S. (2013). ', 'Concurrencia y sistemas distribuidos', '. Editorial de la Universidad Politécnica de Valencia.'),
      _Referencia('Joyanes Aguilar, L. (2008). ', 'Fundamentos de programación: Algoritmos, estructura de datos y objetos', ' (4.ª ed.). McGraw-Hill / Interamericana de España.'),
      _Referencia('Stallings, W. (2005). ', 'Sistemas operativos: Aspectos internos y principios de diseño', ' (5.ª ed.). Pearson Educación.'),
      _Referencia('Universidad Carlos III de Madrid. (s. f.). ', 'Procesos concurrentes y problemas en la comunicación y la sincronización', '. Material docente de Sistemas Operativos.'),
      _Referencia('Wolf, G., Ruiz, E., Bergero, F., & Meza, E. (2015). ', 'Fundamentos de sistemas operativos', ' (1.ª ed.). Universidad Nacional Autónoma de México, Instituto de Investigaciones Económicas; Facultad de Ingeniería.'),
    ]),
    _GrupoReferencias('AF3 - Memoria y archivos', Icons.folder, [
      _Referencia('eloutput.com. (2026, julio). ', 'Guía de trucos para optimizar HyperOS y proteger tus datos móviles', '.'),
      _Referencia('La Red Martínez, D. L. (2001). ', 'Sistemas operativos', '. Universidad Nacional del Nordeste.'),
      _Referencia('Lee, C., Sim, D., Joo, J., y Kim, J. (2015). F2FS: Un nuevo sistema de archivos para almacenamiento flash. ', 'ACM Transactions on Storage (TOS), 11', '(2), 1-24.'),
      _Referencia('Levin, J. (2015). ', 'Arquitectura interna de Android: Un manual de estructura', ' (1.ª ed.). Technotales Publishing.'),
      _Referencia('Muñoz López, F. J. (2013). ', 'Sistemas operativos en red', ' (2.ª ed.). McGraw-Hill.'),
      _Referencia('Proyecto de Código Abierto de Android. (s. f.). ', 'Gestión de memoria', '. Android Open Source Project. https://source.android.com/docs/core/perf/memory'),
      _Referencia('Silberschatz, A., Galvin, P. B., y Gagne, G. (2006). ', 'Fundamentos de sistemas operativos', ' (7.ª ed.). McGraw-Hill.'),
      _Referencia('Silva, M. (2015). ', 'Sistemas operativos', '. Alfaomega Grupo Editor.'),
      _Referencia('Stallings, W. (2005). ', 'Sistemas operativos: Aspectos internos y principios de diseño', ' (5.ª ed.). Pearson Educación.'),
      _Referencia('Tanenbaum, A. S. (2009). ', 'Sistemas operativos modernos', ' (3.ª ed.). Pearson Educación.'),
      _Referencia('Wolf, G., Ruiz, E., Bergero, F., & Meza, E. (2015). ', 'Fundamentos de sistemas operativos', '. Universidad Nacional Autónoma de México, Instituto de Investigaciones Económicas; Facultad de Ingeniería.'),
    ]),
    _GrupoReferencias('AF4 - Seguridad y redes', Icons.security, [
      _Referencia('Gómez Vieites, Á. (2011). ', 'Enciclopedia de la seguridad informática', ' (2.ª ed.). RA-MA.'),
      _Referencia('Landoll, D. J. (2021). ', 'The security risk assessment handbook: A complete guide for performing security risk assessments', ' (3rd ed.). CRC Press.'),
      _Referencia('Ministerio de Hacienda y Administraciones Públicas. (2012). ', 'MAGERIT, versión 3.0: Metodología de análisis y gestión de riesgos de los sistemas de información. Libro I, Método', '. https://administracionelectronica.gob.es/pae_Home/va/dam/jcr:fb373672-f804-4d05-8567-2d44b3020387/2012_Magerit_v3_libro1_metodo_es_NIPO_630-12-171-8.pdf'),
      _Referencia('National Institute of Standards and Technology. (2012). ', 'Guide for conducting risk assessments', ' (NIST SP 800-30, Rev. 1). https://csrc.nist.gov/pubs/sp/800/30/r1/final'),
      _Referencia('Silberschatz, A., Galvin, P. B., y Gagne, G. (2006). ', 'Sistemas operativos', ' (7.ª ed.). McGraw-Hill / Interamericana de España.'),
      _Referencia('Stallings, W., y Brown, L. (2018). ', 'Computer security: Principles and practice', ' (4th ed.). Pearson.'),
      _Referencia('Tanenbaum, A. S., y Wetherall, D. J. (2012). ', 'Redes de computadoras', ' (5.ª ed.). Pearson Educación.'),
      _Referencia('Whitman, M. E., y Mattord, H. J. (2022). ', 'Principles of information security', ' (7th ed.). Cengage Learning.'),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    final colores = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Referencias'),
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
          const Text(
            'Referencias bibliográficas',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Fuentes consultadas en formato APA, agrupadas por actividad y ordenadas alfabéticamente.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          for (final g in _grupos)
            Card(
              margin: const EdgeInsets.only(bottom: 12),
              clipBehavior: Clip.antiAlias,
              child: ExpansionTile(
                leading: Icon(g.icono, color: colores.primary),
                title: Text(g.titulo, style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text('${g.referencias.length} referencias'),
                childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                children: [
                  for (var i = 0; i < g.referencias.length; i++) ...[
                    if (i > 0) const Divider(height: 1),
                    _fila(i + 1, g.referencias[i]),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  /// Una referencia numerada; el título de la obra va en cursiva (APA).
  Widget _fila(int numero, _Referencia r) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 32,
            child: Text(
              '$numero.',
              style: const TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: SelectableText.rich(
              TextSpan(
                style: const TextStyle(fontSize: 15, height: 1.5),
                children: [
                  TextSpan(text: r.antes),
                  TextSpan(text: r.cursiva, style: const TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: r.despues),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GrupoReferencias {
  final String titulo;
  final IconData icono;
  final List<_Referencia> referencias;
  const _GrupoReferencias(this.titulo, this.icono, this.referencias);
}

/// Referencia dividida en partes para poner en cursiva el título de la obra.
class _Referencia {
  final String antes;
  final String cursiva;
  final String despues;
  const _Referencia(this.antes, this.cursiva, this.despues);
}
