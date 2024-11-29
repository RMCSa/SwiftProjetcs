import 'package:flutter/material.dart';

class Maltes extends StatelessWidget{
  const Maltes({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Text("Você selecionou Maltês"),
              const SizedBox(height: 30),
              Image.asset("assets/images/maltes.jpg"),
              const SizedBox(height: 30),
              ElevatedButton(

                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("Voltar")
              )
            ],
          ),
        )

    );

  }

}