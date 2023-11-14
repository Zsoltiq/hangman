import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman/views/game_view.dart';

class HomeViewController extends GetxController{
 
  TextEditingController firstname =TextEditingController();
  TextEditingController lastname =TextEditingController();
  TextEditingController school =TextEditingController();

  void jatekInditasa(){
    if(firstname.text!=""&& lastname.text !=""&& school.text!=""){
      Get.to(GameView(),transition: Transition.cupertino);
    }
    else if(firstname.text ==""){
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a keresztneved!"),
        actions: [
          CupertinoActionSheetAction(child:Text("ok"),onPressed: () {
            Get.back();
          }, 
          
          )
        ],
      ));
      
    }
    else if(lastname.text ==""){
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a vezetékneved!"),
        actions: [
          CupertinoActionSheetAction(child:Text("ok"),onPressed: () {
            Get.back();
          }, 
          
          )
        ],
      ));

       
    }
    else
    Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg az iskolát!"),
        actions: [
          CupertinoActionSheetAction(child:Text("ok"),onPressed: () {
            Get.back();
          }, 
          
          )
        ],
      ));
        
    }
  }
