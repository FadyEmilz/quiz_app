import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resourses/routes_managers.dart';

class onBoardingController {
  int currentPostionIndecator =0;
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outputData;
  late PageController onBoardingPageViewcntl;
  onBoardingController(){
    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;
    inputData.add(currentPostionIndecator);
    onBoardingPageViewcntl = PageController(initialPage: currentPostionIndecator);

  }
  void onTabIndicator(int currentpositin){
    currentPostionIndecator = currentpositin;
    inputData.add(currentPostionIndecator);
    onBoardingPageViewcntl.animateToPage(currentPostionIndecator, duration: Duration(milliseconds: 500), curve: Curves.easeIn);

  }
  int getCurrentPosition(){
    return currentPostionIndecator;
  }
  void onTabNext() {
    if (currentPostionIndecator == 2) {
      currentPostionIndecator = 0;
    } else {
      currentPostionIndecator++;
    }
    inputData.add(currentPostionIndecator);
    onBoardingPageViewcntl.animateToPage(
      currentPostionIndecator,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void onDispose(){
    inputData.close();
    streamController.close();
    onBoardingPageViewcntl.dispose();
  }
  void onSkipTabed(BuildContext context){
    Navigator.pushReplacementNamed(context, routesMangersNames.login);
  }
}