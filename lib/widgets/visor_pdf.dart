import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

/// Pantalla que muestra un PDF incluido en assets/pdfs/.
class VisorPdf extends StatelessWidget {
  final String titulo;
  final String ruta;

  const VisorPdf({super.key, required this.titulo, required this.ruta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: PdfViewer.asset(ruta),
    );
  }
}
