import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/splash_controllers/splashers.dart';
import '../../../core/resourses/colors_managers.dart';
import '../../../core/resourses/strings_managers.dart';

class Myappbutton extends StatefulWidget {
  const Myappbutton(
      {super.key,
      required this.btn_title,
      required this.onPressed, required this.isActiveStream});
  final String btn_title;

  final VoidCallback onPressed;
  final Stream<bool> isActiveStream;

  @override
  State<Myappbutton> createState() => _MyappbuttonState();
}

class _MyappbuttonState extends State<Myappbutton> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: widget.isActiveStream, builder: (context, snapshot){
      return MaterialButton(
        onPressed: snapshot.data == null ? null : snapshot.data == true ? widget.onPressed : null,
        child: Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: snapshot.data == null ? Colors.grey : snapshot.data == true ? ColorManagers.primary_color : Colors.grey,
            ),
            child: Center(
                child: Text(
                  widget.btn_title,
                  style: GoogleFonts.farro(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ))),
      );
    });
  }
}
