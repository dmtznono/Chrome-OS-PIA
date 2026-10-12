import 'package:flutter/material.dart';


class ManRecursosSO extends StatelessWidget {
  const ManRecursosSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manejo de recursos del sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Una computadora es un conjunto de recursos para transportar, '
              'almacenar y procesar datos, y el sistema operativo es el '
              'conjunto de programas que los administra. El SO (sistema operativo) '
              'asigna la memoria principal, decide cuándo un programa puede usar un '
              'dispositivo de entrada/salida, controla el acceso a los archivos y '
              'determina cuánto tiempo de procesador recibe cada programa. '
              'Piensa en el sistema operativo como el administrador de un edificio: '
              'hay pocos recursos (procesador, memoria RAM y almacenamiento) y muchos '
              'programas que los piden al mismo tiempo. El SO reparte, vigila y '
              'recupera esos recursos para que ningún programa deje a los demás sin '
              'nada y el equipo no se trabe.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Chrome OS usa el kernel de Linux, así que es el kernel quien '
              'administra los recursos, con ajustes pensados para un equipo '
              'que vive dentro del navegador: ',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            Image.asset(
              'assets/images/manejorecOS.jpeg',
              width: double.infinity,
            ),

            
            const SizedBox(height: 15),

            ExpansionTile(
              title: const Text('RAM', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Guarda lo que estás usando en este momento y es limitada, '
                    'por eso el sistema operativo decide quién la ocupa y cuándo '
                    'se libera. En Chrome OS, cuando la RAM empieza a llenarse, '
                    'el sistema primero comprime datos en memoria (zRAM). '
                    'Si todavía falta espacio, descarta una pestaña inactiva, que '
                    'se vuelve a cargar al regresar a ella. Puedes fijar una pestaña '
                    'para que no se descarte.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('Almacenamiento', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Guarda de forma permanente el sistema, las aplicaciones y '
                    'los archivos, y el sistema operativo controla quién accede '
                    'a ellos. Chrome OS guarda los datos de cada usuario en un '
                    'espacio cifrado y favorece guardar los archivos en Google Drive. '
                    'Si el espacio se agota, el sistema limpia primero archivos '
                    'temporales. Mover los archivos a la nube es la mejor forma de '
                    'liberar espacio.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: const Text('CPU', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Ejecuta los programas, pero hay más programas que núcleos, '
                    'así que el sistema operativo reparte su tiempo entre todos '
                    '(planificación). En Chrome OS, el kernel pone las pestañas '
                    'visibles en un grupo de primer plano y las ocultas en uno '
                    'de segundo plano, y le da más tiempo de CPU al primero. Así, '
                    'lo que estás viendo responde rápido aunque haya muchas '
                    'pestañas abiertas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}