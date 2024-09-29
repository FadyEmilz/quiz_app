import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controllers/onBoarding_controllers/onBoardingscr_controller.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:dots_indicator/dots_indicator.dart';

class BoardingNavBar extends StatefulWidget {
  const BoardingNavBar({super.key, required this.index, required this.outputDataIndecator});
  final int index;
  final Stream<int> outputDataIndecator;

  @override
  State<BoardingNavBar> createState() => _BoardingNavBarState();
}

class _BoardingNavBarState extends State<BoardingNavBar> {
  late onBoardingController _onBoardingCtrl;

  @override
  void initState() {
    _onBoardingCtrl = onBoardingController(); // Check if this class is correctly implemented
    super.initState();
  }
  @override
  void dispose() {
    _onBoardingCtrl.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52, right: 32, left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringsMangers.bordingSkip,
            style: GoogleFonts.farro(
              textStyle: TextStyle(
                color: ColorManagers.bordingFont_color,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          StreamBuilder(stream: _onBoardingCtrl.outputData , builder: (context,snapshot){
            return DotsIndicator(
              dotsCount: 3,
              position: snapshot.data == null ? 0 : snapshot.data!, // Ensure position is not null
              onTap: (index) {

                setState(() {
                  _onBoardingCtrl.onTabIndicator(index);
                });
              },
            );
          }),
          InkWell(
            onTap: (){
              _onBoardingCtrl.onTabNext();

            },
            child: Text(
              StringsMangers.bordingNext,
              style: GoogleFonts.farro(
                textStyle: TextStyle(
                  color: ColorManagers.bordingFont_color,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
