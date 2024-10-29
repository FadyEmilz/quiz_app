import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controllers/answerscreen_controllers/answerscreen_controller.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/core/resourses/const_values.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:quiz_app/views/answer/widgets/answer_container.dart';
import 'package:quiz_app/views/answer/widgets/answer_number.dart';
import 'package:quiz_app/views/answer/widgets/student_information.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  late var userData;
  late AnswerScreenController _answerScreenController;
  @override
  void initState() {
    super.initState();
    _answerScreenController = AnswerScreenController();
  }

  @override
  Widget build(BuildContext context) {
    userData = ModalRoute.of(context)!.settings.arguments;
    _answerScreenController.informationGetter(userData);

    return Scaffold(
        backgroundColor: ColorManagers.primary_color,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              StudentInformation(
                name: _answerScreenController
                    .informationAnswer[StringsMangers.navName],
                grade: _answerScreenController.numberOfCorrect,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnswerNumber(
                            isCorrect:
                                _answerScreenController.lastAswers[index] ==
                                        true
                                    ? true
                                    : false,
                            qNum: index + 1,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          AnswerContainer(
                            isCorrect:
                                _answerScreenController.lastAswers[index] ==
                                        true
                                    ? true
                                    : false,
                            question: ConstValues.myQuestions[index].qTitle,
                            answer: _answerScreenController.informationAnswer[StringsMangers.navAnswerList][index] == -1 ? "Didnt Answer" : ConstValues.myQuestions[index].answers[_answerScreenController.informationAnswer[StringsMangers.navAnswerList][index]].toString(),
                            correctAnswer: ConstValues.myQuestions[index].answers[ConstValues.myQuestions[index].coreectAnswer].toString(),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: _answerScreenController
                        .informationAnswer[StringsMangers.navAnswerList]
                        .length),
              )
            ],
          ),
        )));
  }
}
