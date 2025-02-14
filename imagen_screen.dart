import 'package:flutter/material.dart';

class ImagenScreen extends StatelessWidget {
  final String imagenPath;

  ImagenScreen(this.imagenPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagen")),
      body: Center(
        child: Image.asset(imagenPath),
      ),
    );
  }
}
