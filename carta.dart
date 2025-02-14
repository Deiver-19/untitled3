import 'package:flutter/material.dart';
import 'galeria.dart';

class CartaScreen extends StatefulWidget {
  @override
  _CartaScreenState createState() => _CartaScreenState();
}

class _CartaScreenState extends State<CartaScreen> {
  double posX = 0.0;
  double posY = 0.0;

  void moverBoton() {
    setState(() {
      posX = (posX + 50) % 300; // Movimiento limitado en el eje X
      posY = (posY + 50) % 300; // Movimiento limitado en el eje Y
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carta Especial")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "¿Quieres ser mi Novia?",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("¡Sabía que dirías que sí! ❤️"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GaleriaScreen()),
                            );
                          },
                          child: Text("Continuar"),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text("Sí ❤️", style: TextStyle(fontSize: 18)),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: moverBoton,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.only(left: posX, top: posY),
                  child: ElevatedButton(
                    onPressed: null, // No hace nada al presionar
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text("No 💔", style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


