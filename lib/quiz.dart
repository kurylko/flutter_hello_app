import 'package:first_flutter_app/data/questions.dart';
import 'package:first_flutter_app/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/start_screen.dart';
//import 'package:first_flutter_app/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // storing selected answers
  var activeScreen = 'start-screen';

//  Widget ? activeScreen; //activeScreen could also be null (no value initially)

//Execute before render - after the object was created but not during the object creation
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();  // make sure that in parent class (State class) initState is executing
  // }

  void switchScreen() {
    setState(() {
      activeScreen =
          'questions-screen'; // this approach does not require initState()
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen' // condition outside the Widget
    //            ? StartScreen(switchScreen) //if condition is true
    //            : const QuestionsScreen(); // if condition is false

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 197, 3, 149),
                Color.fromARGB(179, 73, 8, 185),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: activeScreen,
          // child: activeScreen == 'start-screen' // condition - to render content conditionally
          //     ? StartScreen(switchScreen) //if condition is true
          //     : const QuestionsScreen(), // if condition is false
          child: screenWidget,
        ),
      ),
    );
  }
}
