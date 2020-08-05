import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> scoreKeeper =[];

  List<Questions> questionbank=[
    Questions(q:'You can lead a cow down stairs but not up stairs.', a: false),
    Questions(q:'Approximately one quarter of human bones are in the feet.', a: true),
    Questions(q:'A slug\'s blood is green.', a: true),
    Questions(q:'Anu is intelligent', a: true),
    Questions(q:'Riya is a good girl', a: false),
    Questions(q:'Aman is very lazy', a: true),
    Questions(q:'Laddoo is a good boy', a: false),
  ];

  int questionNumber=0;

  void checkAnswer(userPicked){
    bool correctAns = questionbank[questionNumber].answer;
    if(correctAns == userPicked){
      setState(() {
        scoreKeeper.add(Icon(Icons.check,color:Colors.green));
      });
    }
    else{
      setState(() {
        scoreKeeper.add(Icon(Icons.close,color:Colors.red));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionbank[questionNumber].question,
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
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
                setState(() {
                  questionNumber=(questionNumber+1)%questionbank.length;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                setState(() {
                  questionNumber=(questionNumber+1)%questionbank.length;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: , false,
question2: , true,
question3: , true,
*/
