import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resourses/assets_value_manager.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:quiz_app/models/onBoarding_items_model.dart';

class boardingCoulmn extends StatelessWidget {
  const boardingCoulmn({super.key, required this.OnBoardingItems,});
  final onboarding_items OnBoardingItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          child: Image.asset(OnBoardingItems.imgPath),
        ),
        SizedBox(height: 20,),
        Text(
          OnBoardingItems.title,
          style: GoogleFonts.farro(textStyle: TextStyle(color: ColorManagers.bordingFont_color,fontSize: 32)),
        ),
        SizedBox(height: 10,),
        Text(
          OnBoardingItems.sub_title,
          style: GoogleFonts.farro(textStyle: TextStyle(color: ColorManagers.bordingFont_color,fontSize: 21)),
        ),

        
      ],
    );
  }
}
