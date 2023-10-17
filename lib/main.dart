import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hangman/views/game_view.dart';
import 'package:hangman/views/home_view.dart';

void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeView()
  ));
}