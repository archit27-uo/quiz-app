
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
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(

        ),
        const Text(
            "This is the quiz question",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        ),
        // const SizedBox(
        //   height: 200,
        // ),
        Row(

          children: [

            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                  ),
                  onPressed: (){},
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
                  onPressed: (){},
                  child: Text("FALSE")
              ),
            ),
          ],
        )
      ],
    );
  }
}
