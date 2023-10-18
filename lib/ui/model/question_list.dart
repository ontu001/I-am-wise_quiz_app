import 'package:i_am_wise/ui/model/question_instance.dart';

class QuestionList {
  int _questionCount = 0;
  List<QuestionInstance> _questionSets = [
    QuestionInstance(
        questions: 'Flutter can only develop mobile applications.',
        images: "images/flutter.png",
        answers: false),
    QuestionInstance(
        questions: 'Colombo is the capital of Sri Lanka.',
        images: "images/colombo.jpeg",
        answers: true),
    QuestionInstance(
        questions: 'Cox\'s Bazar is the longest sea beach in the world.',
        images: "images/sea-beach.jpeg",
        answers: true)
  ];

  void nextQuestion() {
    _questionCount++;
  }

  String getQuestion() {
    return _questionSets[_questionCount].questions;
  }

  String getImage() {
    return _questionSets[_questionCount].images;
  }

  bool getAnswer() {
    return _questionSets[_questionCount].answers;
  }
}
