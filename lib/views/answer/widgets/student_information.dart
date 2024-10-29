import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/colors_managers.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key, required this.name, required this.grade});

  final String name;
  final int grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      width: 380,
      height: 105,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(


              "Name : $name",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: 21, fontWeight: FontWeight.w700, color: ColorManagers.primary_color),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 8),
            child: Text("Grade :  ${grade} / 8", style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, color: ColorManagers.primary_color)),),
          )

        ],
      ),
    );
  }
}
