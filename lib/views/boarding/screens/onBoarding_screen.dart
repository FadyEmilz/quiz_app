import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/controllers/onBoarding_controllers/onBoardingscr_controller.dart';
import 'package:quiz_app/core/resourses/assets_value_manager.dart';
import 'package:quiz_app/core/resourses/const_values.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:quiz_app/views/boarding/widgets/boardingNavBar.dart';
import 'package:quiz_app/views/boarding/widgets/coulmnBourdingWidget.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BoardingNavBar(index: index, outputDataIndecator: onBoardingController().outputData,),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: PageView.builder(
            itemCount: ConstValues.onBoarding_lista.length,



            itemBuilder: (BuildContext context, int index) {
              print(index);

              return boardingCoulmn(OnBoardingItems: ConstValues.onBoarding_lista[index],);
            },


          ),
        ),
      ),

    );
  }
}
