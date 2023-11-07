import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/views/game_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Hangman"))),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height:500, child: Image.asset("images/Barosslogo.png")),
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add meg a vezetékneved",
                labelText: "Vezetéknév",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add meg a keresztneved",
                labelText: "Keresztnév"
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add meg a iskolád",
                labelText: "Iskola",
              ),
            ),
          ),
           CupertinoButton.filled(
          child: Text("Start game"),
          onPressed: () {
            Get.to(
              () => GameView(),
              transition: Transition.downToUp,
            );
          },
        )
        ],
            ),
      ),
    );
  }
}
