import 'package:quiz_app/core/resourses/const_values.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';

class AnswerScreenController{
 late var informationAnswer;
 List<bool> lastAswers =[];
 int numberOfCorrect =0;
  void informationGetter(var informationAnswer){
    this.informationAnswer = informationAnswer;
    compaireAnswers();

  }
  void compaireAnswers(){
    lastAswers.clear();
    numberOfCorrect = 0;
    for(int i=0; i < ConstValues.myQuestions.length;i++){
      bool an = informationAnswer[StringsMangers.navAnswerList][i] == ConstValues.myQuestions[i].coreectAnswer;
      if(an == true){
        numberOfCorrect++;
      }
      lastAswers.add(an);
    }
  }
}