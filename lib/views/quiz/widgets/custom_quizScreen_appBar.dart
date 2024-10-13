import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/colors_managers.dart';

class AppbarQuizscreen extends StatelessWidget implements PreferredSizeWidget {
  const AppbarQuizscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text('7/10',style: GoogleFonts.baloo2(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),),
      leadingWidth: 100,
      backgroundColor: ColorManagers.fill_color,
      leading: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: (){
            Navigator.canPop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios,size: 15,color: ColorManagers.primary_color,),
              Text('Previous',style: GoogleFonts.baloo2(textStyle: TextStyle(fontSize: 12,color: ColorManagers.primary_color,fontWeight: FontWeight.w600)),),
            ],
          ),
        ),
      ),

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
