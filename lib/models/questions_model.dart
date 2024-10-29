class QuestionsModel{
  late String _qTitle;
  late List<dynamic> _answers;
  late int _coreectAnswer;

   QuestionsModel({required String qTitke,required List<dynamic> answers,required int coreectAnswer }){
     _qTitle = qTitke;
     _answers = answers;
     _coreectAnswer = coreectAnswer;
   }

  int get coreectAnswer => _coreectAnswer;

  set coreectAnswer(int value) {
    _coreectAnswer = value;
  }

  List<dynamic> get answers => _answers;

  set answers(List<dynamic> value) {
    _answers = value;
  }

  String get qTitle => _qTitle;

  set qTitle(String value) {
    _qTitle = value;
  }
}