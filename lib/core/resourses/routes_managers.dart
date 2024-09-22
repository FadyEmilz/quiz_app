import 'package:flutter/cupertino.dart';
import 'package:quiz_app/views/boarding/screens/onBoarding_screen.dart';
import 'package:quiz_app/views/splash/screens/splash_screen.dart';

class routesMangersNames {
  static const String onBoarding = 'onBoardingScreen';
  static const String splash = 'splashScreen';


}
class routesMangers {
  static Map<String,WidgetBuilder> myRoutes = {
    routesMangersNames.onBoarding : (context) => onBoardingScreen(),
    routesMangersNames.splash : (context) => splashScreen(),


  };
}