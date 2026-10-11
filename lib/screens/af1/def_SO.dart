import 'package:flutter/material.dart';

class DefSO extends StatelessWidget {
  const DefSO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Definición de sistema operativo'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Definición de sistema operativo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // IMAGEN
            Image.asset(
              'assets/images/sistema_operativo.jpeg',
              width: double.infinity,
            ),

            const SizedBox(height: 20),

            const Text(
              '¿Qué es un sistema operativo?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Un sistema operativo es el software encargado de gestionar los recursos de hardware y permitir la ejecución de aplicaciones, el almacenamiento de información y el control de los componentes de un dispositivo.  '
              'a la definición del sistema operativo...',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Chrome OS ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Chrome OS es un sistema operativo que está basado en Linux y es desarrollado por Google, está centrado en la nube, es decir, busca aprovechar los espacios de la misma, esta es su principal diferencia ante otros sistemas como Windows y macOS, con este enfoque le permite al usuario estar siempre conectado. Es un SO seguro, versátil y sencillo de administrar y a la fecha forma el principal componente de las Chromebook.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Aquí continúa la información del tema. '
              'Puedes colocar varios párrafos, imágenes y '
              'diferentes apartados.',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // OTRA IMAGEN
            Image.asset(
              'assets/images/arquitectura_so.jpg',
              width: double.infinity,
            ),

            const SizedBox(height: 20),

            const Text(
              'Conclusión',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Aquí colocas la conclusión del tema...',
              style: TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}