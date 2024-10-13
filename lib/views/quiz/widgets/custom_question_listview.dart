import 'package:flutter/cupertino.dart';

import 'custom_radio_tile.dart';

class CustomQuestionListview extends StatelessWidget {
  const CustomQuestionListview(
      {super.key,
      required this.listaLenth,
      required this.oneOption,
      required this.streamRadioGroup, required this.onTap});
  final int listaLenth;
  final List<String> oneOption;
  final Stream streamRadioGroup;
  final void Function(int indexVal) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return StreamBuilder(
              stream: streamRadioGroup,
              builder: (context, snapshot) {
                return CustomRadioTile(
                  optionText: oneOption[index],
                  onTap: () {
                    onTap(index);
                  },
                  isSelected: snapshot.data == null ? false : snapshot.data == index ? true : false,
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
