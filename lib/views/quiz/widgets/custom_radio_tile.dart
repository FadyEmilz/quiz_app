import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/assets_value_manager.dart';
import '../../../core/resourses/colors_managers.dart';

class CustomRadioTile extends StatelessWidget {
  const CustomRadioTile({
    super.key,
    required this.optionText,
    required this.onTap,
    this.isSelected = false
  });

  final String optionText;
  final GestureTapCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected == true ? ColorManagers.lightPrimary_color : Colors.white,
        ),
        height: 60,
        width: 380,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                optionText,
                style: GoogleFonts.baloo2(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorManagers.primary_color,
                  ),
                ),
              ),
              // Conditionally display the circular container or an icon
              isSelected
                  ? Container(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: ColorManagers.primary_color,
                ),
                child: Image.asset(
                  images_names.selectedImage,
                  color: Colors.white,
                ),
              )
                  : Image.asset(images_names.unSelectedImage)
            ],
          ),
        ),
      ),
    );
  }
}
