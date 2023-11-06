import 'package:flutter/cupertino.dart';
import 'package:hangman/controllers/game_view_controller.dart';
import 'package:hangman/views/widgets/lettter_button.dart';

class LetterHolder extends StatelessWidget {
  LetterHolder({
    super.key,
    required this.controller,
    required this.letters,
  });
  List<String> letters = [];
  final GameViewController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LetterButton(letter: letters[0], controller: controller),
          LetterButton(letter: letters[1], controller: controller),
          LetterButton(letter: letters[2], controller: controller),
          LetterButton(letter: letters[3], controller: controller),
          LetterButton(letter: letters[4], controller: controller),
          LetterButton(letter: letters[5], controller: controller),
        ],
      ),
    );
  }
}