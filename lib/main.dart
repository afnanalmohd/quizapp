import 'package:flutter/material.dart';
import 'package:quizapp2/quizapp.dart';
import 'package:quizapp2/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// variable for index ///

  int _totalScore = 0;
  int _questionIndex = 0;

  ///funcation  1 ////

  answerQuestion( int score) {
    _totalScore += score ;

    setState(() {
      _questionIndex += 1;
    });
    print(_totalScore);
  }

  ///funcation 2 that make the index zero ////

  _resetQuiz() {

    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  ///list of question ////

  final List< Map <String,Object>> _question = [
    {
      'questionText': 'What\'s the capital city of saudi arabia?',
      'answers': [
        {'text': 'Jeddah', 'score': 0},
        {'text': 'Riyadh', 'score': 5},
        {'text': 'Makkah', 'score': 0},
        {'text': 'Abha', 'score': 0}
      ]
    },
    {
      'questionText': 'What is often seen as the smallest unit of memory?',
      'answers': [
        {'text': 'kilobyte', 'score': 5},
        {'text': 'byte', 'score': 0},
        {'text': 'Megabytes', 'score': 0},
        {'text': 'gigabyte', 'score': 0},
      ]
    },
    {
      'questionText': 'How many molecules of oxygen does ozone have?',
      'answers': [
        {'text': 'One ', 'score': 0},
        {'text': 'Two', 'score': 0},
        {'text': 'Three', 'score': 5},
        {'text': 'Four', 'score': 0},
      ]
    },
    {
      'questionText': 'What part of the atom has no electric charge?',
      'answers': [
        {'text': 'Neutron', 'score': 5},
        {'text': 'Protons', 'score': 0},
        {'text': 'Electrons', 'score': 5},
        {'text': 'Nucleus', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the symbol for potassium?',
      'answers': [
        {'text': 'B', 'score': 0},
        {'text': 'K', 'score': 5},
        {'text': 'C', 'score': 0},
        {'text': 'P', 'score': 0},
      ]
    },
    {
      'questionText': 'Who is often called the father of the computer?',
      'answers': [
        {'text': 'Stevie Wonder', 'score': 0},
        {'text': 'Charles Babbage', 'score': 0},
        {'text': 'Steve Jobs', 'score': 0},
        {'text': 'Bill Gates', 'score': 5},
      ]
    },
    {
      'questionText': 'Which planet has the most gravity?',
      'answers': [
        {'text': 'Sun', 'score': 0},
        {'text': 'Jupiter', 'score': 5},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0},
      ]
    },
    {
      'questionText': 'Aquaman is from which city under the sea?',
      'answers': [
        {'text': 'Alaska', 'score': 0},
        {'text': 'Cairo', 'score': 0},
        {'text': 'Newyork', 'score': 0},
        {'text': 'Atlantis', 'score': 5},
      ]
    },
    {
      'questionText': 'How many Lord of the Rings films are there?',
      'answers': [
        {'text': 'One ', 'score': 0},
        {'text': 'Two', 'score': 0},
        {'text': 'Three', 'score': 5},
        {'text': 'Four', 'score': 0},
      ]
    },
    {
      'questionText':
          'What was the name of the actor who played Jack Dawson in Titanic?',
      'answers': [
        {'text': 'Tom Brady', 'score': 0},
        {'text': 'Leonardo DiCaprio', 'score': 5},
        {'text': ' Brad Pitt', 'score': 0},
        {'text': 'Tom Cruise', 'score': 0},
      ]
    },
    {
      'questionText': 'Which planet is the hottest in the solar system?',
      'answers': [
        {'text': 'Sun', 'score': 0},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 5},
      ]
    },
    {
      'questionText':
          'Who did Forbes name the youngest self-made billionaire in 2019?',
      'answers': [
        {'text': 'Kylie Jenner', 'score': 5},
        {'text': 'Bella Hadid', 'score': 0},
        {'text': 'Adriana Lima', 'score': 0},
        {'text': 'Irina Shayk', 'score': 0},
      ]
    },
    {
      'questionText': 'Which country produces the most coffee in the world?',
      'answers': [
        {'text': 'yeman', 'score': 0},
        {'text': 'Brazil', 'score': 5},
        {'text': 'Ethiopia', 'score': 0},
        {'text': 'Casablanca', 'score': 0},
      ]
    },
    {
      'questionText': 'Which country invented tea?',
      'answers': [
        {'text': 'India', 'score': 0},
        {'text': 'Malaysia', 'score': 0},
        {'text': 'Indonesia', 'score': 0},
        {'text': 'China', 'score': 5},
      ]
    },
    {
      'questionText':
          'Which country is responsible for giving us pizza and pasta?',
      'answers': [
        {'text': 'Italy', 'score': 5},
        {'text': 'Germany', 'score': 0},
        {'text': 'Spain', 'score': 0},
        {'text': 'Russia', 'score': 0},

      ]
    },
    {
      'questionText': 'What is the name of the world’s longest river?',
      'answers': [
        {'text': 'Amazon River', 'score': 0},
        {'text': 'Mississippi River', 'score': 5},
        {'text': 'The Nile', 'score': 5},
        {'text': 'Mekong River', 'score': 5}
      ]
    },
    {
      'questionText': 'How many Pyramids of Giza were made?',
      'answers': [
        {'text': 'One ', 'score': 0},
        {'text': 'Two', 'score': 0},
        {'text': 'Three', 'score': 5},
        {'text': 'Four', 'score': 0},
      ]
    },
    {
      'questionText':
      'What year was the very first model of the iPhone released?',
      'answers': [
        {'text': '2005', 'score': 0},
        {'text': '2006', 'score': 0},
        {'text': '2007', 'score': 5},
        {'text': '2008', 'score': 0},
      ]
    },
    {
      'questionText':
      'Which city in India would you find the Taj Mahal in?',
      'answers': [
        {'text': 'Agra', 'score': 5},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Delhi', 'score': 0},
        {'text': 'Kolkata', 'score': 0},
      ]
    },  {
      'questionText':
      'In which year World War I begin?',
      'answers': [
        {'text': '1912', 'score': 0},
        {'text': '1913', 'score': 0},
        {'text': '1914', 'score': 5},
        {'text': '1915', 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            ///app bar///
            appBar: AppBar(
              backgroundColor: Color(0XFFBCD5B8),
              title: Text("QUIZ App"),
            ),

            ///body////////

            body: Container(

                ///this condition  as item count in builder because
                /// when i get to the  list to ba error  //

                child: _questionIndex < _question.length
                   ?  QuizApp(_question, _questionIndex, answerQuestion)
                   : Result(_resetQuiz,_totalScore)

            )
        )
    );
  }
}
