import 'package:flutter/material.dart';

class GaleriaScreen extends StatelessWidget {
  final List<String> imagenes = [
    "assets/imagen1.jpg",
    "assets/imagen2.jpg",
    "assets/imagen3.jpg",
    "assets/imagen4.jpg",
    "assets/imagen5.jpg",
    "assets/imagen6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mis intenciones contigo son")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos imágenes por fila
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemCount: imagenes.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagenes[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            );
          },
        ),
      ),
    );
  }
}
