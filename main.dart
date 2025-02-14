import 'package:flutter/material.dart';
import 'bienvenida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Universo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BienvenidaScreen(),
    );
  }
}
