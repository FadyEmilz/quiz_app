import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/assets_value_manager.dart';
import '../../../core/resourses/colors_managers.dart';

class AnswerContainer extends StatelessWidget {
  const AnswerContainer({super.key,required this.isCorrect, required this.question, required this.answer, required this.correctAnswer});
  final String question;
  final String answer;
  final String correctAnswer;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
            color: isCorrect == true ? ColorManagers.green_color : ColorManagers.red_color,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                textAlign: TextAlign.center,
                question,
                style: GoogleFonts.baloo2(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: ColorManagers.primary_color,
                        ),
                        child: Image.asset(
                          images_names.selectedImage,
                          color: Colors.white,
                        ),

                      ),

                      Expanded(child: Text('$correctAnswer',textAlign: TextAlign.center,style: GoogleFonts.baloo2(textStyle: TextStyle(color: ColorManagers.primary_color,fontSize: 18, fontWeight: FontWeight.w600)),))
                    ],
                  ),
                ),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
              ),
            ),
            if(isCorrect == false) Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: ColorManagers.primary_color,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Image.asset(
                            images_names.wrongImge,
                            color: Colors.white,
                          ),
                        ),

                      ),

                      Expanded(child: Text('$answer',textAlign: TextAlign.center,style: GoogleFonts.baloo2(textStyle: TextStyle(color: ColorManagers.primary_color,fontSize: 18, fontWeight: FontWeight.w600)),))
                    ],
                  ),
                ),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
