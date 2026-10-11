import 'package:flutter/material.dart';



class FuncionesSO extends StatelessWidget {
  const FuncionesSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funciones del sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ExpansionTile(
              title: const Text('Kernel'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Es la parte central del sistema operativo'
                    'y actúa como el intermediario fundamental'
                    'entre los programas y el hardware.'
                    'Al ejecutarse con máximos privilegios, controla'
                    'directamente la CPU, la memoria y los dispositivos,'
                    'garantizando que ninguna aplicación toque el hardware'
                    'de forma directa, sino que deba solicitarle al kernel'

                    'Chrome OS:'
                    'que lo gestione por ella mediante llamadas al sistema.'
                    'Chrome OS usa una versión del kernel de Linux, ajustada'
                    'para un arranque rápido, seguridad (arranque verificado)'
                    'y bajo consumo de recursos.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/kernel.jpeg',
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Gestión de procesos'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Es el componente encargado de crear, planificar,'
                    'ejecutar y terminar los procesos, decidiendo cuándo'
                    'y por cuánto tiempo utiliza la CPU cada uno.'
                    'Gracias a esto, aunque la CPU solo realiza pocas tareas'
                    'a la vez, el sistema operativo alterna entre los procesos'
                    'tan rápido que da la ilusión de que todo ocurre al mismo tiempo.'

                    'Chrome OS:'
                    'Chrome usa una arquitectura multiproceso: cada pestaña y extensión'
                    'suele ejecutarse en su propio proceso. Si una pestaña falla, no se'
                    'cierra todo el navegador. El Administrador de tareas (Shift + Esc)'
                    'muestra estos procesos.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/proceso.jpeg',
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Sistema de archivos y gestión de dispositivos (E/S)'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'El sistema de archivos se encarga de organizar'
                    'y almacenar la información en el disco, decidiendo'
                    'dónde y cómo se guardan los datos, mientras que la'
                    'gestión de dispositivos controla la comunicación con'
                    'los periféricos mediante controladores (drivers),'
                    'haciendo posible que elementos como el teclado, la pantalla,'
                    'el USB o el Wi-Fi funcionen correctamente con el sistema.'

                    'Chrome OS:'
                    'El sistema base es de solo lectura y está protegido, y los datos'
                    'del usuario se guardan aparte y cifrados. La app Archivos integra'
                    'el almacenamiento local, las memorias USB y Google Drive.'
                    'Los drivers provienen del kernel de Linux.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/es.jpeg',
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Gestión de memoria'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Es el componente que asigna, controla y libera'
                    'la memoria principal (RAM) entre el sistema operativo'
                    'y los procesos. Como la RAM es un recurso limitado,'
                    'el sistema operativo decide cuánta le corresponde a cada'
                    'programa y evita que uno invada el espacio de otro.'

                    'Chrome OS:'
                    'Los Chromebooks suelen tener poca RAM, por lo que Chrome OS'
                    'usa memoria virtual comprimida (zram) y puede descartar'
                    'pestañas que no se usan para liberar espacio.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/memoria.jpeg',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}