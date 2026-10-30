import 'package:flutter/material.dart';

import 'af4_widgets.dart';

/// Subtema AF4: Administración de riesgos, amenazas y protección de recursos.
/// Contenido: Ficha de contenido 1 del Integrante 7.
class AdministracionRiesgosScreen extends StatelessWidget {
  const AdministracionRiesgosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Administración de riesgos'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Conceptos de seguridad y administración de riesgos.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Amenaza',
              texto: 'Representa cualquier circunstancia o evento con el potencial de causar un daño al sistema.',
            ),
            const SeccionAF4(
              titulo: 'Vulnerabilidad',
              texto: 'Es una debilidad o fallo en el diseño, implementación o configuración que puede ser explotado por una amenaza.',
            ),
            const SeccionAF4(
              titulo: 'Riesgo',
              texto: 'Es la probabilidad de que una amenaza materialice una vulnerabilidad generando un impacto negativo.',
            ),
            const SeccionAF4(
              titulo: 'Incidente',
              texto: 'Es el evento de seguridad ya consumado que interrumpe la operación normal.',
            ),
            const SizedBox(height: 20),
            const FiguraAF4(
              ruta: 'assets/images/af4_gestion_riesgos.jpg',
              pie: 'Ilustración 1. El proceso de gestión de riesgos: 4 pasos esenciales. Fuente: Creación propia.',
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Definición conceptual',
              texto:
                  'Conjunto de metodologías y controles sistemáticos orientados a identificar, evaluar y mitigar eventos adversos que puedan comprometer la integridad, disponibilidad y confidencialidad de los recursos de un sistema informático, previniendo la degradación del rendimiento por la mala gestión de procesos y almacenamiento.',
            ),
            const SeccionAF4(
              titulo: 'Explicación',
              texto:
                  'La administración de riesgos en informática es un proceso preventivo indispensable para anticipar fallas técnicas o brechas de seguridad. Para su correcta gestión, se definen cuatro conceptos fundamentales: amenaza, vulnerabilidad, riesgo e incidente.\n\n'
                  'Para mantener la estabilidad e integridad del sistema durante este proceso, la concurrencia se divide en tres partes:\n\n'
                  '• Solapamiento: Las tareas avanzan de forma intercalada dentro de un mismo periodo temporal.\n'
                  '• Aislamiento: Cada proceso opera dentro de un espacio de memoria delimitado y protegido, evitando interferencias o corrupción de datos entre programas.\n'
                  '• Sincronización: El sistema operativo implementa mecanismos de control para coordinar el acceso de múltiples procesos cuando compiten por un mismo recurso compartido.',
            ),
            const SeccionAF4(
              titulo: 'Chrome OS',
              texto:
                  'Chrome OS aplica un modelo de seguridad por capas que mitiga riesgos de forma nativa. Utiliza el Verified Boot para comprobar la integridad del sistema en cada inicio, aísla cada pestaña y aplicación mediante sandboxing estricto y cifra los datos de usuario mediante criptografía basada en hardware, reduciendo drásticamente las vulnerabilidades frente a software malicioso.',
            ),
            const SeccionAF4(
              titulo: 'Ejemplo práctico',
              texto:
                  'Un usuario almacena información académica relevante únicamente de manera local en su equipo. Ante una falla imprevista en el almacenamiento interno, se pierde la información. Si se hubiera implementado una estrategia de administración de riesgos y respaldos automatizados en la nube, los datos estarían protegidos y disponibles para su recuperación inmediata.',
            ),
            const SeccionAF4(
              titulo: 'Ver más',
              texto:
                  'El análisis de problemas y la administración de riesgos permiten identificar amenazas y vulnerabilidades antes de que se transformen en incidentes. Mediante la protección de recursos y un plan de respaldo adecuado, se asegura la continuidad operativa frente a imprevistos técnicos.',
            ),
          ],
        ),
      ),
    );
  }
}
