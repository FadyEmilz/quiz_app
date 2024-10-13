import 'dart:async';

class QuizScreenController{
  int radioGroupVAl =-1;
  List<String> options = ['1955','2001','2010','1900'];
  late StreamController<int> radiostreamController;
  late Sink<int> inputRadiostreamController;
  late Stream<int> outputRadiostreamController;
  //nutton Controllers
  bool activNextButton = false;
  late StreamController<bool> streamBuikder;
  late Sink<bool> dataInput;
  late Stream<bool> dataOutput;
  QuizScreenController(){
    radiostreamController = StreamController();
    inputRadiostreamController = radiostreamController.sink;
    outputRadiostreamController = radiostreamController.stream.asBroadcastStream();
    streamBuikder = StreamController();
    dataInput = streamBuikder.sink;
    dataOutput = streamBuikder.stream.asBroadcastStream();
    inputRadiostreamController.add(radioGroupVAl);
    dataInput.add(activNextButton);

  }

  void onTapOptions(int valGroupRadio){
    radioGroupVAl = valGroupRadio;
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
  }

}