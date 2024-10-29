import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resourses/const_values.dart';

class CustomQuestionContainer extends StatelessWidget {
  const CustomQuestionContainer({super.key, required this.qustionOutput});

  final Stream qustionOutput;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: qustionOutput,
        builder: (context, snapshot) {
          return Card(
            elevation: 15,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  ConstValues.myQuestions[snapshot.data == null ? 0 : snapshot.data].qTitle,
                  style: GoogleFonts.baloo2(
                      textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  )),
                )),
              ),
              width: 380,
              height: 230,
            ),
          );
        });
  }
}
