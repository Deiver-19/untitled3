import 'package:flutter/material.dart';
import 'galeria.dart';

class ConfirmacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("¡Aceptaste! 🎉")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "¡Qué felicidad! 💖\nTengo algo más para ti.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GaleriaScreen()),
                );
              },
              child: Text("Siguiente ➡️"),
            ),
          ],
        ),
      ),
    );
  }
}
