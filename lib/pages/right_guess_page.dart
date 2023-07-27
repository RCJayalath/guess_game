import 'package:flutter/material.dart';
import 'home_page.dart';

class RightGuessPage extends StatelessWidget{
  final int guessedNumber;

  const RightGuessPage({Key? key, required this.guessedNumber}) : super(key: key);


  @override
  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
       backgroundColor: Color.fromARGB(214, 142, 236, 200),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      const Text("Yes! You guessed it right. My secrect number is ",
            style: TextStyle(fontWeight: FontWeight.w600)
      ),
      const SizedBox(
            height: 40,
          ),
          Text("$guessedNumber",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 40,
              )),
          const SizedBox(
            height: 40,
          ),
      ElevatedButton(
        onPressed: () {
        //Go to the home page(push replacement)
        Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
      },
      child:const Text("Start the Game Again")
    )
    ],
    ),
    ),
    );
  }
}