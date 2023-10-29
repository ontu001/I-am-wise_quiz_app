import 'package:i_am_wise/ui/model/question_instance.dart';

class QuestionList {
  int _questionNumber = 0;

  List<QuestionInstance> questionSets = [
    QuestionInstance(
        questions: 'Flutter can only develop mobile applications.',
        images: "images/flutter.png",
        answers: false),
    QuestionInstance(
        questions: 'Colombo is the capital of Sri Lanka.',
        images: "images/colombo.jpeg",
        answers: true),
    QuestionInstance(
        questions: 'Cox\'s Bazar is the longest sea beach in the world',
        images: "images/sea-beach.jpeg",
        answers: true)
  ];

//for moving next question
  void nextQuestion() {
    if (_questionNumber < questionSets.length - 1) {
      _questionNumber++;
    }
  }


//for getting question
  String getQuestion() {
    return questionSets[_questionNumber].questions;
  }

  //for getting images
  String getImage() {
    return questionSets[_questionNumber].images;
  }

  //for getting answers
  bool getAnswer() {
    return questionSets[_questionNumber].answers;
  }

  void reset() {
    _questionNumber = 0;
  }
}
