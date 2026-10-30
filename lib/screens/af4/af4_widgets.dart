import 'package:flutter/material.dart';

/// Widgets compartidos por los subtemas de AF4.

/// Sección desplegable con título y texto.
class SeccionAF4 extends StatelessWidget {
  final String titulo;
  final String texto;
  final bool justificar;

  const SeccionAF4({
    super.key,
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

/// Imagen con su pie de figura.
class FiguraAF4 extends StatelessWidget {
  final String ruta;
  final String pie;

  const FiguraAF4({super.key, required this.ruta, required this.pie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ruta),
        const SizedBox(height: 8),
        Text(
          pie,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}

/// Botón grande que abre una pantalla de detalle.
class BotonDetalleAF4 extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String texto;

  const BotonDetalleAF4({
    super.key,
    required this.icono,
    required this.titulo,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalleAF4Screen(titulo: titulo, texto: texto),
            ),
          );
        },
        icon: Icon(icono),
        label: Text(titulo),
      ),
    );
  }
}

/// Pantalla de detalle: título, texto y botón "Regresar".
class DetalleAF4Screen extends StatelessWidget {
  final String titulo;
  final String texto;

  const DetalleAF4Screen({super.key, required this.titulo, required this.texto});

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
