import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resourses/colors_managers.dart';

class PercentQuiz extends StatelessWidget {
  const PercentQuiz({super.key, required this.percent_text});
  final String percent_text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.white,
      child: CircularPercentIndicator(
        animationDuration: 6000,
        animation: true,
        center:Text(percent_text, style: GoogleFonts.baloo2(textStyle: TextStyle(color: ColorManagers.zetiy_color,fontSize: 32,fontWeight: FontWeight.w600)),),
        radius: 40,
        backgroundColor: ColorManagers.secandary_color,
        progressColor: ColorManagers.primary_color,
        percent: .3,
        lineWidth: 8,


      ),
    );
  }
}
