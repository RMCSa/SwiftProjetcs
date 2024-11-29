import "package:flutter/material.dart";

class Doguinhos extends StatelessWidget{
  const Doguinhos({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          const Padding(
            padding:EdgeInsets.all(30),
            child: Text(
              "Qual doguinho?",
              style: TextStyle(
                fontSize: 22), 
              textAlign: TextAlign.center)                 
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              
              Padding(
                padding: const EdgeInsets.all(40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white30),
                  onPressed: () {
                    Navigator.pushNamed(context, 'dogYork');
                  }, 
                  child: const Text(
                    "YorkShire",
                    style:TextStyle(color:Colors.blue)

                  )
                )
              ),

              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24),
                
                onPressed: () {

                  Navigator.pushNamed(context,'dogMaltes');

                }, 

                child: const Text(
                  "Maltês",
                  style: TextStyle(color: Colors.blue)
                )

              )

            ],
          )
        ],
      )
    );
  }
 

  
}