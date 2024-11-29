import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Temperatura',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
