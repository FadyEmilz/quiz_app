import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/resourses/routes_managers.dart';
import 'package:quiz_app/views/splash/screens/splash_screen.dart';

class MyquizApp extends StatefulWidget {
  const MyquizApp({super.key});

  @override
  State<MyquizApp> createState() => _MyquizAppState();
}

class _MyquizAppState extends State<MyquizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routesMangers.myRoutes,
      debugShowCheckedModeBanner: false,
      initialRoute: routesMangersNames.splash,
    );
  }
}
