import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/colors_managers.dart';

class AnswerNumber extends StatelessWidget {
  const AnswerNumber({super.key, required this.isCorrect, required this.qNum});
  final bool isCorrect;
  final int qNum;

  @override
  Widget build(BuildContext context) {
    return Container(width: 58,height: 35,
      decoration: BoxDecoration(color: isCorrect == true ? ColorManagers.green_color : ColorManagers.red_color,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
      child: Center(child: Text("$qNum",style: TextStyle(fontSize: 21, color: Colors.white,),)),

    );
  }
}
