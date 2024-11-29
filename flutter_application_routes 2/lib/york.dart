import 'package:flutter/material.dart';

class York extends StatelessWidget{
  const York({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              const Text("Você selecionou YorkShire"),

              const SizedBox(height: 30),

              Image.asset("assets/images/york.jpg"),

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