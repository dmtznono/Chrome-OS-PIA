import 'package:flutter/material.dart';

import 'af4_widgets.dart';

/// Subtema AF4: Recuperación del dispositivo, Powerwash y gestión de incidentes.
/// Contenido: Ficha de contenido 2 del Integrante 7.
class RecuperacionPowerwashScreen extends StatelessWidget {
  const RecuperacionPowerwashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperación y Powerwash'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Recuperación y Powerwash en Chrome OS.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Protocolo ante cuenta comprometida',
              texto:
                  'Acciones inmediatas: Modificación de credenciales de acceso, revisión de sesiones activas y, de ser necesario, la restauración del sistema a su estado original.',
            ),
            const SeccionAF4(
              titulo: 'Funcionamiento del Powerwash',
              texto:
                  'Chrome OS simplifica la recuperación mediante herramientas integradas como la sincronización continua de datos en la nube y la función Powerwash que hace un restablecimiento de fábrica seguro. Si el sistema operativo experimenta daños severos en el firmware o el almacenamiento, Chrome OS permite la recuperación completa del dispositivo mediante una unidad externa utilizando la herramienta oficial de recuperación.\n\n'
                  'Advertencia de seguridad: Los procesos de restablecimiento total de fábrica eliminan de manera definitiva todos los archivos almacenados localmente en el dispositivo.',
            ),
            const SeccionAF4(
              titulo: 'Opciones de respaldo de archivos',
              texto:
                  'Requisito indispensable: Realización previa de copias de seguridad de los archivos locales antes de ejecutar cualquier procedimiento de limpieza profunda del sistema.\n\n'
                  'Es fundamental respaldar los archivos locales antes de realizar un restablecimiento de fábrica, ya que este proceso borra por completo los datos almacenados en el disco local, aunque la sincronización de datos en la nube facilita la restauración del perfil de usuario de forma rápida y segura.',
            ),
            const SizedBox(height: 20),
            const FiguraAF4(
              ruta: 'assets/images/af4_respaldo_nube.jpg',
              pie: 'Ilustración 2. Sistema de respaldo en la nube. Fuente: Veeam Data Platform (https://www.veeam.com).',
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Definición conceptual',
              texto:
                  'Procedimientos, protocolos y herramientas orientados a restaurar la operatividad del sistema, solucionar intrusiones, mitigar cuentas comprometidas y recuperar la información mediante estrategias de respaldo, restablecimiento de fábrica y sincronización de datos.',
            ),
            const SeccionAF4(
              titulo: 'Explicación',
              texto:
                  'Ante situaciones críticas como la pérdida de información, comportamiento sospechoso del equipo o el compromiso de una cuenta de usuario, es necesario aplicar protocolos rigurosos de recuperación.',
            ),
            const SeccionAF4(
              titulo: 'Ejemplo práctico',
              texto:
                  'Un usuario nota un rendimiento bajo y sospecha que su equipo ha sido atacado por un software malicioso, por lo que decide realizar un Powerwash. Debido a que mantenía sus archivos sincronizados y respaldados correctamente, al iniciar sesión nuevamente con su cuenta de Google, recupera sus aplicaciones y configuraciones en pocos minutos sin sufrir pérdida de información personal.',
            ),
            const SeccionAF4(
              titulo: 'Ver más',
              texto:
                  'La recuperación del dispositivo y el Powerwash permiten solucionar fallas graves y comportamientos sospechosos en Chrome OS. Es fundamental respaldar los archivos locales antes de realizar un restablecimiento de fábrica, ya que este proceso borra por completo los datos almacenados en el disco local, aunque la sincronización de datos en la nube facilita la restauración del perfil de usuario de forma rápida y segura.',
            ),
          ],
        ),
      ),
    );
  }
}
