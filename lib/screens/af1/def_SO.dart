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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Un sistema operativo es el programa principal que'
              'hace funcionar una computadora o celular, siendo'
              'el software encargado de gestionar los recursos de'
              'hardware y permitir la ejecución de aplicaciones, el'
              'almacenamiento de información y el control de los'
              'componentes del dispositivo.',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ExpansionTile(
              title: const Text('Chrome OS'),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Chrome OS es un SO que se basa en Linux y centra su funcionamiento'
                    'en la nube, permitiendo al usuario estar siempre conectado.'
                    'Es seguro, versátil y sencillo de administrar, y es el componente'
                    'principal de las Chromebooks.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),

                Image.asset(
                  'assets/images/DefOS.jpeg',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}