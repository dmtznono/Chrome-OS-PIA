import 'package:flutter/material.dart';

/// Subtema AF3: Memoria, almacenamiento y sistemas de archivos en Chrome OS.
/// Contenido: ficha de contenido del Integrante 1 (Avance 2).
class MemoriaAlmacenamientoArchivosScreen extends StatelessWidget {
  const MemoriaAlmacenamientoArchivosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memoria, almacenamiento y archivos'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gestión de memoria, almacenamiento y control de archivos en Chrome OS.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/af3_control_archivos_chromeos.png'),
            const SizedBox(height: 8),
            const Text(
              'Figura 1. Integración de controladores de archivos en los menús de ChromeOS. Fuente: Google for Developers.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            const _Seccion(
              titulo: 'Definición conceptual',
              texto:
                  'Mecanismos de gestión de recursos físicos y lógicos que implementa el sistema operativo para administrar la memoria volátil (RAM), el almacenamiento interno en memoria Flash, la memoria virtual y la integración con sistemas de archivos locales y en la nube.',
            ),
            const _Seccion(
              titulo: 'Explicación',
              texto:
                  'Chrome OS optimiza el rendimiento del equipo balanceando el uso de la memoria física y delegando la persistencia de los archivos a estructuras locales indexadas o servicios en la nube.',
            ),
            const _Seccion(
              titulo: 'Tipos de memoria y función',
              texto:
                  'Uso de memoria caché, memoria principal (RAM) para la ejecución eficiente de pestañas y aplicaciones web, y memoria virtual basada en compresión dinámica.',
            ),
            const _Seccion(
              titulo: 'Memoria RAM y almacenamiento interno',
              texto:
                  'La RAM procesa las tareas activas de forma volátil, mientras que el almacenamiento interno (unidades de estado sólido) resguarda el sistema base y archivos locales temporales.',
            ),
            const _Seccion(
              titulo: 'Sistemas de archivos y organización de datos',
              texto:
                  'Organización jerárquica mediante la aplicación de archivos y el soporte nativo para extensiones y controladores de archivos. A partir de ChromeOS 120, las extensiones pueden registrar controladores de archivos (file_handlers) en el manifiesto (manifest.json) sin requerir permisos especiales, integrándose directamente en los menús "Abrir" y "Abrir con" del explorador de archivos del sistema al seleccionar tipos de extensiones específicos (por ejemplo, archivos .txt).',
            ),
            const _Seccion(
              titulo: 'Administración de memoria y control de espacio',
              texto:
                  'El núcleo supervisa el espacio ocupado y disponible mediante rutinas automatizadas que liberan recursos ante alta demanda.',
            ),
            const _Seccion(
              titulo: 'Almacenamiento local, archivos descargados y Google Drive',
              texto:
                  'Combina de manera transparente el almacenamiento local de la carpeta Descargas con el repositorio en la nube de Google Drive, permitiendo la manipulación uniforme de documentos.',
            ),
            const _Seccion(
              titulo: 'Consulta y administración del almacenamiento',
              texto:
                  'Los usuarios pueden consultar el estado del almacenamiento ingresando a las opciones del sistema (Configuración > Dispositivo > Almacenamiento) o con la interfaz de archivos.',
            ),
            const _Seccion(
              titulo: 'Ejemplo práctico',
              texto:
                  'Cuando un usuario interactúa con un archivo de texto desde el explorador de archivos de ChromeOS, el sistema invoca el controlador configurado en la extensión mediante la interfaz LaunchQueue de la API de la plataforma web (procesando objetos FileSystemFileHandle), permitiendo abrir y editar el contenido directamente en una pestaña dedicada.',
            ),
            const _Seccion(
              titulo: 'Ver más',
              texto:
                  'Chrome OS administra la memoria y los archivos bajo una arquitectura moderna orientada a la eficiencia y la seguridad en la nube. Los diferentes tipos de memoria operan de forma coordinada para asegurar una multitarea fluida. En el aspecto de almacenamiento, el sistema no solo maneja directorios locales y carpetas de descargas, sino que integra de forma nativa capacidades avanzadas como el manejo de archivos mediante extensiones a partir de ChromeOS 120, permitiendo que las aplicaciones web y de extensión controlen formatos específicos directamente desde los menús Abrir y Abrir con utilizando la API de Launch Handler y la interfaz LaunchQueue. Para consultar el espacio disponible, los usuarios disponen de paneles dedicados en la configuración del sistema que detallan el uso del almacenamiento local y su vinculación con Google Drive.',
            ),
          ],
        ),
      ),
    );
  }
}

class _Seccion extends StatelessWidget {
  final String titulo;
  final String texto;
  final bool justificar;

  const _Seccion({
    required this.titulo,
    required this.texto,
    this.justificar = true,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.w600)),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            texto,
            textAlign: justificar ? TextAlign.justify : TextAlign.start,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ),
      ],
    );
  }
}
