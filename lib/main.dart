import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   var questionIndex = 0;

//   void answerQuestion() {
//     questionIndex = questionIndex + 1;
//     print(questionIndex);
//   }
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    //questionIndex of our code is the one that will be updated.
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Which mobile is best in 2020?",
      "Which is the fastest animal?"
    ];

    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(
                      //questions.elementAt(0),
                      questions[questionIndex],
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "Answer 1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: answerQuestion,
                    color: Colors.red,
                  ),
                  RaisedButton(
                    child: Text(
                      "Answer 2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print("Answer 2 selected");
                    },
                    color: Colors.amber,
                  ),
                  RaisedButton(
                    child: Text(
                      "Answer 3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print("Answer 3 selected");
                    },
                    color: Colors.green,
                  ),
                  RaisedButton(
                    child: Text(
                      "Answer 4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print("Answer 4 selected");
                    },
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ), //header
    )); //Parent container/master block
  }
}
