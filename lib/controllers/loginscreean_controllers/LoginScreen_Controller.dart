import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resourses/routes_managers.dart';

class LoginController{
  String name = "";
  late GlobalKey<FormState> loginKey;
  bool activButton = false;
  late StreamController<bool> streamBuikder;
  late Sink<bool> dataInput;
  late Stream<bool> dataOutput;

  LoginController(){
    loginKey = GlobalKey();
    streamBuikder =StreamController();
    dataInput = streamBuikder.sink;
    dataOutput = streamBuikder.stream;
    dataInput.add(activButton);

  }
  String? loginValdeteMethod (value){
    if(value!.isEmpty){
      return "please enter your name";
    }
    else if(value.length <= 4){
      return "your name should be at least 4 charachters";

    }
    else{
      return null;
    }
  }
  void TextfieldUpdated(){
    if(loginKey.currentState!.validate()){
      activButton = true;

    }
    else{activButton= false;}
    dataInput.add(activButton);
  }
  void onDispose(){
    dataInput.close();
    streamBuikder.close();
  }
  void navigateToQuiz(BuildContext context){
    Navigator.pushReplacementNamed(context, routesMangersNames.quiz);
  }
}