import 'question.dart';

class QuizBrain {
  int _questionNum = 0;

  // _ indicates it's a private value can't be accessed from outside classes
  List<Question> _questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  bool nextQuestion() {
    if (_questionNum < _questions.length - 1) {
      _questionNum++;
      return true;
    } else {
      print('quiz is finished');
      return false;
    }
  }

  String getQuestionText() => _questions[_questionNum].questionText;

  void resetQuiz() => _questionNum = 0;

  bool getQuestionAnswer() => _questions[_questionNum].answer;
}
