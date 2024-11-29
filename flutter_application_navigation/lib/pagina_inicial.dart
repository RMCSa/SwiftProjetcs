import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bem-vindo ao Flutter",
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
