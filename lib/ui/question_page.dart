import 'package:flutter/material.dart';
import 'package:i_am_wise/ui/model/question_list.dart';


class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  List<Widget> iconList = [];

  //decalear instance
  QuestionList questionList = QuestionList();


  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionList.questionSets[currentIndex].questions,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                color: Colors.white,
                shadowColor: Colors.grey,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                      questionList.questionSets[currentIndex].images,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctValue = questionList.questionSets[currentIndex].answers;

                if (correctValue == true) {
                  print('Correct');
                } else {
                  print('Wrong');
                }
                setState(() {
                  currentIndex++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
               bool correctValue = questionList.questionSets[currentIndex].answers;

                if (correctValue == false) {
                  print('Correct');
                } else {
                  print('Wrong');
                }
                setState(() {
                  currentIndex++;
                });
              },
            ),
          ),
        ),
        Row(
          children: iconList,
        )
        //TODO: Add a Row here to show your right or wrong answer
      ],
    );
  }
}
