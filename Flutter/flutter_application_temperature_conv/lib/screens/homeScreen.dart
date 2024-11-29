import 'package:flutter/material.dart';
import 'resultsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  void _navigateToResults(BuildContext context) {
    double? celsius = double.tryParse(_controller.text);
    if (celsius != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(celsius: celsius),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Entrada Inválida'),
          content: const Text('Insira um número válido.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.orange,
              ),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius:
                      BorderRadius.circular(12), 
                  border:
                      Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Insira a temperatura em Celsius para converter para Fahrenheit e Kelvin:",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Temperatura em Celsius',
                          border: OutlineInputBorder(),
                        ),
                        style:
                            const TextStyle(color: Colors.black), 
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => _navigateToResults(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                      ),
                      child: const Text('Converter'),
                    ),
                  ],
                ),
              ),
              Spacer(),
              const Text(
                'Desenvolvido por: Rafael Moreira C de Souza - 23333',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
