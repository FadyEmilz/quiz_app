import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resourses/const_values.dart';
import 'package:quiz_app/core/resourses/routes_managers.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';

class QuizScreenController{
  int countQuestions=0;
  int currentQuestion=0;
  int radioGroupVAl =-1;
  int timeText=0;
  bool animationStatues = true;
  // userAnswers
  List<int> userAnswers = [];

  Tween<double> tween = Tween(begin: 0, end: 1.0);

  late BuildContext _context;

  late StreamController<int> radiostreamController;
  late Sink<int> inputRadiostreamController;
  late Stream<int> outputRadiostreamController;
  //button Controllers
  bool activNextButton = false;
  late StreamController<bool> streamBuikder;
  late Sink<bool> dataInput;
  late Stream<bool> dataOutput;
  //time stream cotnroler
  late StreamController<int> streamTimeController;
  late Sink<int> timeInput;
  late Stream<int> timeOutput;
  // question Stream controller
  late StreamController<int> streamQuestionController;
  late Sink<int> questionInput;
  late Stream<int> questionOutput;
  // animation stream controller 
  late StreamController<double> streamAnimationProgressController;
  late Sink<double> animationProgressInput;
  late Stream<double> animationProgressOutput;
  // animationControllers
  late AnimationController animationController;
  double progress=0;

  String _userName ="";


  QuizScreenController(SingleTickerProviderStateMixin vsync, BuildContext context){
    _context = context;
    animationController =
        AnimationController(vsync: vsync, duration: Duration(seconds: 31));
    countQuestions = ConstValues.myQuestions.length;

    radiostreamController = StreamController();
    inputRadiostreamController = radiostreamController.sink;
    outputRadiostreamController = radiostreamController.stream.asBroadcastStream();
    streamBuikder = StreamController();
    dataInput = streamBuikder.sink;
    dataOutput = streamBuikder.stream.asBroadcastStream();
    streamTimeController = StreamController();
    timeInput = streamTimeController.sink;
    timeOutput = streamTimeController.stream;
    streamQuestionController = StreamController();
    questionInput = streamQuestionController.sink;
    questionOutput = streamQuestionController.stream.asBroadcastStream();
    streamAnimationProgressController = StreamController();
    animationProgressInput = streamAnimationProgressController.sink;
    animationProgressOutput = streamAnimationProgressController.stream.asBroadcastStream();
    inputRadiostreamController.add(radioGroupVAl);
    dataInput.add(activNextButton);
    timeInput.add(timeText);
    questionInput.add(currentQuestion);
    animationProgressInput.add(progress);
    timeCounter();


  }

  void onTapOptions(int valGroupRadio){
    radioGroupVAl = valGroupRadio;
    if(currentQuestion == userAnswers.length){
      userAnswers.add(radioGroupVAl);
    }
    else {
      userAnswers[currentQuestion] = radioGroupVAl;
    }
    inputRadiostreamController.add(radioGroupVAl);
    if(radioGroupVAl != -1){
      activNextButton = true;
      dataInput.add(activNextButton);
    }
    else{
      activNextButton = false;
      dataInput.add(activNextButton);
    }
  }
  void ondispose(){
    inputRadiostreamController.close();
    radiostreamController.close();
    dataInput.close();
    streamBuikder.close();
    streamTimeController.close();
    timeInput.close();
  }
  void timeCounter() {
    forwardAnimation();
    timeInput.add((progress*31).toInt());

  }
  void nextQuestion(){
    print(userAnswers);
    if(currentQuestion == userAnswers.length){
      userAnswers.add(radioGroupVAl);
    }
    else {
      userAnswers[currentQuestion] = radioGroupVAl;
    }
    radioGroupVAl = -1;
    inputRadiostreamController.add(radioGroupVAl);
    if(currentQuestion >= ConstValues.myQuestions.length-1){

      animationProgressInput.add(progress);
      navigateToAnswer();



    }
    else if(currentQuestion < ConstValues.myQuestions.length-1){
      currentQuestion++;

      timeCounter();
    }

    questionInput.add(currentQuestion);
  }
  void forwardAnimation(){
    animationController.reset();


    animationController.forward();
    animationController.addListener((){
      progress = tween.evaluate(animationController);
      timeInput.add((progress*31).toInt());
      animationProgressInput.add(progress);

    });








}
void restartAnimation(){

    animationController.addStatusListener((status){
      if(status == AnimationStatus.completed){
        nextQuestion();
      }
    });
}
void navigateToAnswer(){
    Navigator.pushReplacementNamed(_context, routesMangersNames.answer,arguments: { StringsMangers.navName:_userName , StringsMangers.navAnswerList: userAnswers} );
}
void userNameGetter(String name){
    _userName = name;
}


}