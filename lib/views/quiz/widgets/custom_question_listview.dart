import 'package:flutter/cupertino.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:quiz_app/core/resourses/const_values.dart';

import 'custom_radio_tile.dart';

class CustomQuestionListview extends StatelessWidget {
  const CustomQuestionListview(
      {super.key,
      required this.listaLenth,
      required this.oneOption,
      required this.streamRadioGroup, required this.onTap, required this.streamOptions});
  final int listaLenth;
  final List<dynamic> oneOption;
  final Stream<int> streamRadioGroup;
  final Stream<int> streamOptions;
  final void Function(int indexVal) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return StreamBuilder2<dynamic,int>(
              streams: StreamTuple2(streamRadioGroup,streamOptions),
              builder: (context, snapshots) {
                return CustomRadioTile(
                  optionText: ConstValues.myQuestions[snapshots.snapshot2.data == null ? 0 : snapshots.snapshot2.data!].answers[index],
                  onTap: () {
                    onTap(index);
                  },
                  isSelected: snapshots.snapshot1.data == null ? false : snapshots.snapshot1.data == index ? true : false,
                );
              });
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 25,
          );
        },
        itemCount: listaLenth);
  }
}
