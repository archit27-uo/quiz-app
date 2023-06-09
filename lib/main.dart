
import 'package:flutter/material.dart';
import 'quiz_base.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Quizz"),
          backgroundColor: Colors.indigo,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: quizz(),
          ),

        )

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
  QuizzBase quizzBase = new QuizzBase();
  int counter =0;
  int scored = 0;
  scorePrinter(bool givenAnswer){
    if(counter<quizzBase.getLength()){
      if(quizzBase.getAnswer()==givenAnswer){
        scored++;
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
    }
    else{
      Alert(
              context: context,
              type: AlertType.success,
              title: "Completed",
              desc: "All question has been answered\nYour Score is $scored",
              buttons: [
                DialogButton(
                  child: Text(
                    "Close",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();

          }

  counter++;
  }
  List<Icon> score = [

  ];

  //int questionNumber = 0;
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
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [


        Expanded(

          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(

                quizzBase.getQuestion(),
              textAlign: TextAlign.center,
              style: TextStyle(

                color: Colors.white,
                fontSize: 30,
              ),
              ),
            ),
          ),
        ),

        // const SizedBox(
        //   height: 200,
        // ),
        // SizedBox(
        //   height: 150,
        // ),
        Expanded(
          child: Row(

            children: [

              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                     padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    ),
                    onPressed: (){
                      setState(() {
                        scorePrinter(true);
                        // if(quizzBase.getAnswer()){
                        //   score.add(
                        //     const Icon(
                        //       Icons.check,
                        //       color: Colors.green,
                        //     ),
                        //
                        //   );
                        // }
                        // else{
                        //
                        //   score.add(
                        //       const Icon(
                        //         Icons.close,
                        //         color: Colors.red,
                        //       ),
                        //   );
                        // }
                        quizzBase.questionIncrement();
                      });

                    },
                    child: const Text(
                      "TRUE",
                    style: TextStyle(
                      fontSize: 20,
                    ),)

                ),
              ),

              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    ),
                    onPressed: (){

                      setState(() {
                        scorePrinter(false);
                        // if(quizzBase.hasNextQus()){
                        //   if(quizzBase.getAnswer()){
                        //     score.add(
                        //       const Icon(
                        //         Icons.close,
                        //         color: Colors.red,
                        //       ),
                        //     );
                        //   }
                        //   else{
                        //
                        //     score.add(
                        //       const Icon(
                        //         Icons.check,
                        //         color: Colors.green,
                        //       ),
                        //     );
                        //   }
                        // }
                        // else{
                        //   Alert(
                        //     context: context,
                        //     type: AlertType.error,
                        //     title: "Completed",
                        //     desc: "All question has been answered",
                        //     buttons: [
                        //       DialogButton(
                        //         child: Text(
                        //           "Close",
                        //           style: TextStyle(color: Colors.white, fontSize: 20),
                        //         ),
                        //         onPressed: () => Navigator.pop(context),
                        //         width: 120,
                        //       )
                        //     ],
                        //   ).show();
                        //
                        // }
                        quizzBase.questionIncrement();
                      });
                    },
                    child: Text(
                      "FALSE",
                    style: TextStyle(
                      fontSize: 20,
                    ))
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: score,
          ),
        )
      ],
    );
  }
}
