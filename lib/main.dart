
import 'package:flutter/material.dart';
import 'quiz_base.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Quizz"),
          backgroundColor: Colors.indigo,
        ),
        body:const quizz(),
      ),
    ),
  );
}

class quizz extends StatefulWidget {
  const quizz({Key? key}) : super(key: key);

  @override
  State<quizz> createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  List<Icon> score = [

  ];
  QuizzBase quizzBase = new QuizzBase();
  int questionNumber = 0;
  // List<String> question =[
  //   'The liver is the largest internal organ in the human body.',
  //   'The human eyes can observe 10 million different colors.',
  //   'The human skin regenerates once in two weeks.',
  // ];
  //
  // List<bool> answer = [
  //   false,
  //   true,
  //   false
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 250,
        ),
        if(questionNumber<13)...[
        Text(

          quizzBase.questionBase.elementAt(questionNumber).questionText,


        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        ),
    ],
        // const SizedBox(
        //   height: 200,
        // ),
        SizedBox(
          height: 150,
        ),
        Row(

          children: [

            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                  ),
                  onPressed: (){
                    setState(() {

                      if(quizzBase.questionBase[questionNumber].questionAnswer){
                        score.add(
                          const Icon(
                            Icons.check,
                            color: Colors.green,
                          ),

                        );
                      }
                      else{

                        score.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                        );
                      }
                      questionNumber++;
                    });

                  },
                  child: Text("TRUE")
              ),
            ),

            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                  ),
                  onPressed: (){
                    setState(() {

                      if(quizzBase.questionBase[questionNumber].questionAnswer){
                        score.add(
                          const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      }
                      else{

                        score.add(
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                        );

                      }
                      questionNumber++;
                    });
                  },
                  child: Text("FALSE")
              ),
            ),
          ],
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
