import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resourses/colors_managers.dart';

class PercentQuiz extends StatelessWidget {
  const PercentQuiz(
      {super.key,
      required this.outputTimeStream,
      required this.outputAnimationProgressStream});

  final Stream<int> outputTimeStream;
  final Stream<double> outputAnimationProgressStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2<int, double>(
        streams:
            StreamTuple2(outputTimeStream, outputAnimationProgressStream),
        builder: (context, snapshots) {
          return CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircularPercentIndicator(
              restartAnimation: true,
              animationDuration: 30000,

              center: Text(
                snapshots.snapshot1.data == null
                    ? '0'
                    : snapshots.snapshot1.data.toString(),
                style: GoogleFonts.baloo2(
                    textStyle: TextStyle(
                        color: ColorManagers.zetiy_color,
                        fontSize: 32,
                        fontWeight: FontWeight.w600)),
              ),
              radius: 40,
              backgroundColor: ColorManagers.secandary_color,
              progressColor: ColorManagers.primary_color,
              percent: snapshots.snapshot2.data == null ? 0 : snapshots.snapshot2.data!,
              lineWidth: 5,
            ),
          );
        });
  }
}
