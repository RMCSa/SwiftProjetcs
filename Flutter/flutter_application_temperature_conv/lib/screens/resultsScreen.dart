import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final double celsius;

  ResultsScreen({required this.celsius});

  @override
  Widget build(BuildContext context) {
    double fahrenheit = (celsius * 9 / 5) + 32;
    double kelvin = celsius + 273.15;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Resultados das Conversões',
              style: TextStyle(fontSize: 20),),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius:
                      BorderRadius.circular(12),
                  border:
                      Border.all(color: Colors.black, width: 2),
                ),
                child: Column(
                  children: [
                    
                    Text(
                      '${celsius}°C -> ${fahrenheit.toStringAsFixed(2)}°F (Fahrenheit)',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${celsius}°C -> ${kelvin.toStringAsFixed(2)}K (Kelvin)',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
