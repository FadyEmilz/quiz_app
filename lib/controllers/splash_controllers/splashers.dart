import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resourses/routes_managers.dart';

class splashBtnNav {
  static void btnNav(BuildContext context) {
    Navigator.pushReplacementNamed(context, routesMangersNames.onBoarding);

}
}