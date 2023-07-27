import 'dart:math';
import 'package:flutter/material.dart';
import 'game_over.dart';
import 'right_guess_page.dart';
import 'wrong_guess_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myNumber = 0;
  int counter = 0;
  final TextEditingController _guessController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
     backgroundColor: Color.fromARGB(255, 245, 245, 245),  
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/guess.png',
          height: 250,
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "I have a secret number in my mind. (1 - 10). You have 3 chances to guess. Can you guess it?",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "$counter of 3 chances are taken",
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: _guessController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            ),
          ),
        )),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            onPressed: () {
              // Get the input from the user and convert it to int = guessedNumber
              int guessedNumber = int.tryParse(_guessController.text) ?? 0;

              if (myNumber == guessedNumber) {
                // Goto Right guess page (Push Replacement)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RightGuessPage(
                      guessedNumber: guessedNumber,
                    ),
                  ),
                );
              } else {
                // Increment the counter by 1
                counter++;
                if (counter == 3) {
                  // Reset the Counter
                  counter = 0;
                  // Go to Game over page and pass the secret number
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          GameOverPage(secretNumber: myNumber),
                    ),
                  );
                } else {
                  // Goto wrong guess page (Push)
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WrongGuessPage(),
                    ),
                  );
                }
              }
            },
            child: const Text("Submit")),
      ],
    )));
  }

  @override
  void initState() {
    int randomNumber = Random().nextInt(10) + 1;
    myNumber = randomNumber;
    super.initState();
  }
}

















