import 'package:flutter/material.dart';
import 'home_page.dart';

class GameOverPage extends StatelessWidget{
  final int secretNumber;
  const GameOverPage({Key? key, required this.secretNumber}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      backgroundColor: Color.fromARGB(255, 163, 205, 226),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      const Text(
        "Sorry Game Over. My Secrect Number is ",
      style: TextStyle(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
            height: 40,
          ),
          Text("$secretNumber",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 40,
              )),
          const SizedBox(
            height: 40,
          ),
      ElevatedButton(onPressed: () {
         //Go to the home page(push replacement)
          Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
      },
      child:const Text("Start the Game Again"))
    ],
    ),
    ),
    );
  }
}