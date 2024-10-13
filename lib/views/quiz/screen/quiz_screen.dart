import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controllers/quizscreen_controllers/quiz_screen_controller.dart';
import 'package:quiz_app/core/resourses/assets_value_manager.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/core/resourses/const_values.dart';
import 'package:quiz_app/views/login/widgets/myAppButton.dart';
import 'package:quiz_app/views/quiz/widgets/custom_circle_percentForQuiz.dart';
import 'package:quiz_app/views/quiz/widgets/custom_question_container.dart';
import 'package:quiz_app/views/quiz/widgets/custom_question_listview.dart';
import 'package:quiz_app/views/quiz/widgets/custom_quizScreen_appBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/views/quiz/widgets/custom_radio_tile.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late QuizScreenController _quizScreenController;
  @override
  void initState() {
    _quizScreenController = QuizScreenController();
    super.initState();
  }
  @override
  void dispose() {
    _quizScreenController.ondispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // String userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        backgroundColor: ColorManagers.fill_color,
        appBar: AppbarQuizscreen(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Myappbutton(btn_title: 'Next', onPressed: (){}, isActiveStream: _quizScreenController.dataOutput),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CustomQuestionContainer(
                          question:
                              'In what year did the United States \n host the FIFA World Cup for the first time?'),
                      Positioned(
                          right: 0,
                          left: 0,
                          top: -40,
                          child: PercentQuiz(percent_text: '50')),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CustomQuestionListview(
                    listaLenth: _quizScreenController.options.length,
                    oneOption: _quizScreenController.options,
                    streamRadioGroup:
                        _quizScreenController.outputRadiostreamController,
                    onTap: (int indexVal) {
                      _quizScreenController.onTapOptions(indexVal);

                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
