import 'package:flutter/material.dart';

import 'af4_widgets.dart';

/// Subtema AF4: Riesgos de seguridad en Chrome OS y medidas preventivas.
/// Contenido: Ficha de contenido 2 de AF4 (Riesgos en Chrome OS).
class SeguridadPrevencionScreen extends StatelessWidget {
  const SeguridadPrevencionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seguridad en Chrome OS y Prevención'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Seguridad y Prevención',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            const BotonDetalleAF4(
              icono: Icons.security,
              titulo: 'Riesgos y Arquitectura',
              texto:
                  'Aunque el núcleo del sistema es robusto, los atacantes atacan la capa de usuario mediante extensiones falsas, descargas de archivos infectados y páginas de suplantación de identidad.',
            ),
            const BotonDetalleAF4(
              icono: Icons.phishing,
              titulo: 'Extensiones y Phishing',
              texto:
                  'Sitios web diseñados para simular servicios legítimos (como Google Drive o bancos) con el fin de engañar al usuario para que entregue sus credenciales de acceso voluntariamente.',
            ),
            const BotonDetalleAF4(
              icono: Icons.verified_user,
              titulo: 'Medidas Preventivas',
              texto:
                  '1. Instalar únicamente extensiones y aplicaciones de desarrolladores verificados.\n\n'
                  '2. No hacer clic en enlaces sospechosos o correos no solicitados.\n\n'
                  '3. Habilitar la autenticación de dos factores (2FA) en las cuentas vinculadas.\n\n'
                  '4. Mantener el equipo actualizado para aprovechar los parches de seguridad automáticos de Google.',
            ),
            const SizedBox(height: 10),
            const FiguraAF4(
              ruta: 'assets/images/af4_seguridad_chromeos.png',
              pie: 'Ilustración 2. Mitigación de riesgos y vectores de ataque en Chrome OS.',
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Definición conceptual',
              texto:
                  'Conjunto de vectores de ataque específicos que afectan a entornos basados en navegador y nube (extensiones falsas, phishing, descargas peligrosas), junto con las barreras arquitectónicas de defensa y las buenas prácticas de mitigación para el usuario.',
            ),
            const SeccionAF4(
              titulo: 'Explicación',
              texto:
                  'Incluso en un vecindario muy seguro y con puertas blindadas (como Chrome OS), si dejas la ventana abierta por descuido (dar clic en un enlace falso o instalar una extensión dudosa), un intruso puede aprovecharlo. Chrome OS reduce muchos riesgos desde el diseño, pero el factor humano y la precaución al navegar siguen siendo indispensables.',
            ),
            const SeccionAF4(
              titulo: 'Chrome OS',
              texto:
                  'Características de seguridad: Chrome OS implementa arranque verificado (Verified Boot), actualizaciones automáticas en segundo plano y aislamiento estricto de pestañas (Sandboxing), lo cual reduce drásticamente las infecciones tradicionales a nivel de sistema operativo.\n\n'
                  'Limitaciones (No elimina todas las amenazas): Las características del sistema operativo no eliminan por completo los riesgos derivados de la ingeniería social y las malas prácticas del usuario, tales como:\n\n'
                  '• Extensiones maliciosas instaladas desde la tienda sin verificar permisos.\n'
                  '• Aplicaciones no confiables ejecutadas dentro del contenedor de Android (ARC++).\n'
                  '• Phishing y sitios web fraudulentos diseñados para robar contraseñas mediante engaños.\n'
                  '• Descargas peligrosas que comprometen documentos locales o sincronizados en la nube.',
            ),
            const SeccionAF4(
              titulo: 'Ejemplo práctico',
              texto:
                  'Un usuario instala una extensión gratuita para el navegador prometiendo funciones milagrosas. Dicha extensión resulta ser maliciosa, inyecta publicidad en cada página web y recopila datos personales, demostrando que Chrome OS protege contra virus de sistema, pero requiere que el usuario verifique qué herramientas complementarias decide instalar.',
            ),
          ],
        ),
      ),
    );
  }
}
