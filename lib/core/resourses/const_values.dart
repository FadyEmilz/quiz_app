import 'package:quiz_app/core/resourses/assets_value_manager.dart';
import 'package:quiz_app/core/resourses/strings_managers.dart';
import 'package:quiz_app/models/onBoarding_items_model.dart';
import 'package:quiz_app/models/questions_model.dart';

class ConstValues {
  static List<onboarding_items> onBoarding_lista = [
    onboarding_items(images_names.boardingImg1, StringsMangers.boarding2Btext,
        StringsMangers.boarding1Stext),
    onboarding_items(images_names.boardingImg2, StringsMangers.boarding2Btext,
        StringsMangers.boarding2Stext),
    onboarding_items(images_names.boardingImg3, StringsMangers.boarding3Btext,
        StringsMangers.boarding3Stext),
  ];

 static List<QuestionsModel> myQuestions = [
    QuestionsModel(
        qTitke: "What is the capital city of Australia?",
        answers: [
          "Sydney",
          "Melbourne",
          "Canberra",
          "Brisbane"],
        coreectAnswer: 2),
    QuestionsModel(
        qTitke: "Which of the following is a prime number?",
        answers: ["10","15","17","21"],
        coreectAnswer: 2),
    QuestionsModel(
        qTitke: " Which planet is known as the 'Red Planet'?",
        answers: ["Venus","Mars","Jupiter","Saturn"],
        coreectAnswer: 1),
    QuestionsModel(
        qTitke: "In computer science, which of the following data structures is based on the Last In, First Out (LIFO) principle?",
        answers: ["Queue","Stack","Array","Linked List"],
        coreectAnswer: 1),
    QuestionsModel(
        qTitke: " Which country is the largest producer of coffee in the world?",
        answers: ["Colombia","Vietnam","Brazil","Ethiopia"],
        coreectAnswer: 2),
    QuestionsModel(
        qTitke: "Who wrote the novel '1984'?",
        answers: ["George Orwell","Aldous Huxley","Ernest Hemingway","J.D. Salinger"],
        coreectAnswer: 0),
    QuestionsModel(
        qTitke: "Which of the following is not a programming language?",
        answers: ["Python","JavaScript","HTML","SQL"],
        coreectAnswer: 2),
    QuestionsModel(
        qTitke: "What is the largest ocean on Earth?",
        answers: ["Atlantic Ocean","Pacific Ocean","Indian Ocean","Arctic Ocean"],
        coreectAnswer: 1),

  ];
}
