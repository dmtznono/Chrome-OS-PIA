import 'package:flutter/material.dart';

/// Subtema AF3: Sistemas de archivos y almacenamiento en diferentes
/// dispositivos (aplicado a Chrome OS).
/// Contenido: Ficha AF3 - Sistemas de archivos y almacenamiento (Avance 2).
class SistemasArchivosAlmacenamientoScreen extends StatelessWidget {
  const SistemasArchivosAlmacenamientoScreen({super.key});

  static const String _textoSistemas =
      'Es la parte del sistema operativo que organiza los datos para poder nombrarlos, guardarlos, encontrarlos y protegerlos. No es lo mismo que la memoria: la RAM guarda lo que estás usando y se vacía al apagar el equipo, y el almacenamiento conserva los archivos. Cada dispositivo usa el suyo: las computadoras, el de su sistema operativo; Android suele usar ext4 y F2FS; los dispositivos de Apple, APFS; y en una red, los archivos pueden estar en un servidor y compartirse entre varias computadoras. Chrome OS puede conectarse a esos recursos compartidos de red (SMB).';

  static const String _textoTipos =
      'El almacenamiento local está dentro del equipo: funciona sin Internet, pero su espacio es limitado. El extraíble, como una memoria USB o una tarjeta SD, se puede llevar a otro lugar y amplía el espacio, pero hay que expulsarlo antes de retirarlo y puede perderse o dañarse. El de la nube, como Google Drive, se abre desde cualquier equipo con tu cuenta e Internet y sirve de respaldo, pero depende de la conexión.';

  static const String _textoArchivos =
      'La app Archivos muestra Mis archivos (con la carpeta Descargas), las unidades externas conectadas y Google Drive. Para organizarte, guarda lo importante en Drive y no dejes archivos valiosos solo en Descargas, porque pueden borrarse si falta espacio; crea carpetas por materia o proyecto y usa nombres claros con la fecha. Para encontrar un archivo, usa el buscador de la app Archivos. Si formateas una unidad externa, se borrará todo lo que tenga.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistemas de archivos y almacenamiento'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sistemas de archivos y almacenamiento',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            _botonGrande(context, Icons.account_tree, 'Sistemas de archivos', _textoSistemas),
            const SizedBox(height: 15),
            _botonGrande(context, Icons.sd_storage, 'Local, extraíble y nube', _textoTipos),
            const SizedBox(height: 15),
            _botonGrande(context, Icons.folder_open, 'Archivos en Chrome OS', _textoArchivos),
            const SizedBox(height: 25),
            Image.asset('assets/images/af3_sistemas_archivos_chromeos.png'),
            const SizedBox(height: 8),
            const Text(
              'Figura 1. Dónde guarda archivos Chrome OS.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            const _Seccion(
              titulo: 'Definición conceptual',
              texto:
                  'Un sistema de archivos es la parte del sistema operativo que organiza cómo se nombran, guardan, localizan y protegen los datos en un dispositivo de almacenamiento, de modo que el usuario trabaja con archivos y carpetas sin preocuparse por el lugar físico donde se escriben. La memoria (RAM) y el almacenamiento cumplen funciones distintas: la memoria guarda temporalmente lo que se está usando y se vacía al apagar el equipo, mientras que el almacenamiento conserva la información de forma permanente. Según dónde esté guardado, el almacenamiento puede ser local, extraíble o en la nube.',
            ),
            const _Seccion(
              titulo: 'Explicación',
              texto:
                  'Piensa en el sistema de archivos como el catálogo de una biblioteca: no guarda los libros, pero sabe cómo se llaman, en qué estante están y quién puede llevárselos. Cada tipo de dispositivo usa su propio sistema de archivos: las computadoras usan el que trae su sistema operativo; en teléfonos y tabletas, Android suele usar ext4 y F2FS, y los dispositivos de Apple usan APFS; y en los sistemas operativos de red, los archivos pueden estar en un servidor y compartirse con varias computadoras a través de la red. Aunque cambie el sistema de archivos, la idea es la misma: ordenar los datos para encontrarlos y protegerlos. Lo que sí cambia para el usuario es dónde está guardado el archivo, y de eso depende si sigue disponible cuando algo falla o cuando cambia de equipo.',
            ),
            const _Seccion(
              titulo: 'Chrome OS',
              texto:
                  'Chrome OS reúne los tres tipos de almacenamiento en una sola app, Archivos:\n\n'
                  '• Local: la sección Mis archivos guarda lo que está en el Chromebook, incluida la carpeta Descargas. Si el equipo se queda sin espacio, los archivos de Descargas pueden borrarse, por eso conviene moverlos a una carpeta permanente, como Mi unidad de Google Drive.\n\n'
                  '• Extraíble: las memorias USB, tarjetas SD y discos duros externos aparecen en Archivos como otra unidad. Chrome OS puede acceder, entre otros, a los formatos FAT (FAT16, FAT32 y exFAT) y NTFS. Antes de retirar la unidad se debe expulsar, y formatearla borra todo su contenido.\n\n'
                  '• Nube: Google Drive está integrado en Archivos y también se pueden conectar otros servicios, como Box o recursos compartidos SMB. Los archivos de Drive se pueden marcar como disponibles sin conexión y sus cambios se sincronizan cuando el Chromebook vuelve a tener Internet.',
            ),
            const _Seccion(
              titulo: 'Ejemplo práctico',
              texto:
                  'Ana descarga un PDF de su tarea y se guarda en Descargas, dentro del Chromebook. Conecta una memoria USB en formato exFAT, que aparece en Archivos como otra unidad, y copia ahí una presentación. Luego mueve el PDF a Mi unidad de Google Drive: así, si el Chromebook se queda sin espacio no pierde ese archivo, y además puede abrirlo desde otro equipo con su cuenta. Antes de sacar la memoria USB, Ana la expulsa desde Archivos.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonGrande(BuildContext context, IconData icono, String titulo, String texto) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => _DetalleScreen(titulo: titulo, texto: texto),
          ),
        );
      },
      icon: Icon(icono),
      label: Text(titulo),
    );
  }
}

/// Pantalla de detalle: título, texto ampliado y botón "Regresar".
class _DetalleScreen extends StatelessWidget {
  final String titulo;
  final String texto;

  const _DetalleScreen({required this.titulo, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              titulo,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              texto,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Regresar'),
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
