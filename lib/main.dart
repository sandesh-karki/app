import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var quesIndex = 0;
  void answerQues() {
    setState(() {
      quesIndex = quesIndex + 1;
    });

    print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      {
        'questionText': 'what\'s your fav colour?',
        'answers': ['Blue', 'Black', 'Red', 'White']
      },
      {
        'questionText': "whats your fav animal?",
        'answers': ['Cat', 'Dog', 'Lion', 'Rabbit']
      },
      {
        'questionText': "whats your fav sports?",
        'answers': ['Football', 'MMA', 'Cricket', 'Volleyball']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[quesIndex]['questionText'],
            ),
            ...(questions[quesIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(answerQues, answer);
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
