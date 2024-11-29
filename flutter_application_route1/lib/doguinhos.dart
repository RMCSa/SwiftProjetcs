import 'package:flutter/material.dart';

class Doguinhos extends StatelessWidget {
  const Doguinhos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Qual Doguinho?',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white30),
                  onPressed: () {},
                  child: Text(
                    "YorkShite",
                    style: TextStyle(backgroundColor: Colors.white30),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
                onPressed: () {}, 
                child: Text(
                  "Pug",
                  style: TextStyle(backgroundColor: Colors.white24),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}