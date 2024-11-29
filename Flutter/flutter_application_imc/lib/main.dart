import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<MainApp> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  void clearFields() {
    pesoController.clear();
    alturaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora IMC"),
          centerTitle: true,
          backgroundColor: Colors.white30,
          actions: <Widget>[
            IconButton(
              onPressed: clearFields,
              icon: const Icon(Icons.ac_unit_sharp),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.accessibility_new_sharp,
                size: 100.0,
                color: Colors.orange,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Peso (kg)",
                ),
                textAlign: TextAlign.center,
                controller: pesoController,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Altura (m)",
                ),
                textAlign: TextAlign.center,
                controller: alturaController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
