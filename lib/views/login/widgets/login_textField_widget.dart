import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/controllers/loginscreean_controllers/LoginScreen_Controller.dart';

import '../../../core/resourses/colors_managers.dart';

class Custom_textField extends StatelessWidget {
  const Custom_textField({super.key, required this.onChanged, required this.loginKey, required this.loginValidator, required this.textFieldcontl, });
  final ValueChanged<String> onChanged;
  final GlobalKey<FormState> loginKey;
  final FormFieldValidator<String> loginValidator;
  final TextEditingController textFieldcontl;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginKey,
      child: TextFormField(
        controller: textFieldcontl,
        onChanged: onChanged,
        validator: loginValidator,
        decoration: InputDecoration(

          focusedBorder: OutlineInputBorder(borderSide: BorderSide(
              color: ColorManagers.primary_color, width: 2),borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: ColorManagers.primary_color, width: 2),
                borderRadius: BorderRadius.circular(20))),

      ),
    );
  }
}