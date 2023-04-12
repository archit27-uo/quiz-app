
import 'package:flutter/material.dart';

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
  int questionNumber = 0;
  List<String> question =[
    'The liver is the largest internal organ in the human body.',
    'The human eyes can observe 10 million different colors.',
    'The human skin regenerates once in two weeks.',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 250,
        ),
        if(questionNumber<3)...[
        Text(

          question.elementAt(questionNumber),


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
                      questionNumber++;
                      score.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
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
                      questionNumber++;
                      score.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
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
