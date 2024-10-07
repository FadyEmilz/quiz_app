import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controllers/loginscreean_controllers/LoginScreen_Controller.dart';
import 'package:quiz_app/core/resourses/colors_managers.dart';
import 'package:quiz_app/views/login/widgets/login_textField_widget.dart';
import 'package:quiz_app/views/login/widgets/myAppButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController _loginController;
  @override
  void initState() {
    _loginController = LoginController();
    super.initState();
  }

  @override
  void dispose() {
    _loginController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              textAlign: TextAlign.center,
              "Q",
              style: GoogleFonts.farro(
                  textStyle: TextStyle(
                      color: ColorManagers.primary_color,
                      fontSize: 200,
                      fontWeight: FontWeight.w400)),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'Enter your name',
                textAlign: TextAlign.left,
                style: GoogleFonts.baloo2(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: ColorManagers.primary_color)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Custom_textField(
                  onChanged: (String value) {
                    _loginController.TextfieldUpdated();
                  },
                  loginKey: _loginController.loginKey,
                  loginValidator: (String? value) {
                    return _loginController.loginValdeteMethod(value);
                  },
                ),
              ),
            ),
            Spacer(),
            Myappbutton(
              btn_title: "Start",
              isActiveStream: _loginController.dataOutput,
              onPressed: () {
                _loginController.navigateToQuiz(context);
              },
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
