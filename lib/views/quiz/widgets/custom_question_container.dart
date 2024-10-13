import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomQuestionContainer extends StatelessWidget {
  const CustomQuestionContainer({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text(question, style: GoogleFonts.baloo2(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,)),)),
        ),
        width: 380,
        height: 230,
      ),
    );
  }
}
