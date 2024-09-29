import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/core/resourses/fonts_managers.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/views/splash/widgets/splashcoulmnWidget.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManagers.primary_color,
      body: SafeArea(
        child: splashCoulmn()
      ),
    );
  }
}
