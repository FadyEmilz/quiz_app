import 'package:quiz_app/core/resourses/assets_value_manager.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:quiz_app/models/onBoarding_items_model.dart';

class ConstValues {
 static List<onboarding_items> onBoarding_lista= [
    onboarding_items(images_names.boardingImg1, StringsMangers.boarding2Btext, StringsMangers.boarding1Stext),
    onboarding_items(images_names.boardingImg2, StringsMangers.boarding2Btext, StringsMangers.boarding2Stext),
    onboarding_items(images_names.boardingImg3, StringsMangers.boarding3Btext, StringsMangers.boarding3Stext),

  ];
}