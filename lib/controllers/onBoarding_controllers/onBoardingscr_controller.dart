import 'dart:async';

class onBoardingController {
  int currentPostionIndecator =0;
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outputData;
  onBoardingController(){
    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;
    inputData.add(currentPostionIndecator);
  }
  void onTabIndicator(int currentpositin){
    currentPostionIndecator = currentpositin;
    inputData.add(currentPostionIndecator);

  }
  int getCurrentPosition(){
    return currentPostionIndecator;
  }
  void onTabNext(){
    if(currentPostionIndecator == 2){
      currentPostionIndecator = 0;
      inputData.add(currentPostionIndecator);
      
    }
    else {
      currentPostionIndecator++;
      inputData.add(currentPostionIndecator);
    }
  }
  void onDispose(){
    inputData.close();
    streamController.close();
  }
}