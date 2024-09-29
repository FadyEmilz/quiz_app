import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controllers/splash_controllers/splashers.dart';

import '../../../core/resourses/colors_managers.dart';
import '../../../core/resourses/fonts_managers.dart';
import '../../../core/resourses/strings_managers.dart';

class splashCoulmn extends StatefulWidget {
  const splashCoulmn({super.key});

  @override
  State<splashCoulmn> createState() => _splashCoulmnState();
}

class _splashCoulmnState extends State<splashCoulmn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
            StringsMangers.splashQ,
            style: GoogleFonts.farro(
              textStyle:  TextStyle(
                fontSize: fontSizes.logosize,
                color: Colors.white,),)),
        SizedBox(height: 20,),
        MaterialButton(



          onPressed: (){
            splashBtnNav.btnNav(context);


          },
          child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
              child: Center(child: Text(StringsMangers.getStarrted,style: GoogleFonts.farro(textStyle: TextStyle(color: ColorManagers.primary_color, fontSize: 21)),))),
        ),
        SizedBox(height: 20,)

      ],
    );
  }
}
