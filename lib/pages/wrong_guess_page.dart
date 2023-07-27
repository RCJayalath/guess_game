import 'package:flutter/material.dart';

class WrongGuessPage extends StatelessWidget{
  const WrongGuessPage({super.key});


  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
       backgroundColor: Color.fromARGB(255, 240, 197, 197),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      const Text("Sorry! Wrong guess. Please try again......",
      style: TextStyle(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
            height: 40,
          ),
      ElevatedButton(onPressed: () {
        Navigator.pop(context);//Go to the home page(Go back)
      },
      child:const Text("Try Again")
    )
    ],
    ),
    ),
    );
  }
}