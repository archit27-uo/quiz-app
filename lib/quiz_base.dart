import 'question.dart';


class QuizzBase{

  final List<Question> _questionBase = [
    Question(a:'The liver is the largest internal organ in the human body.', b:false),
    Question(a:'The human eyes can observe 10 million different colors.',b:true),
    Question(a:'The human skin regenerates once in two weeks.',b:false),
    Question(a: "ants can lift 1,000 times their body weight!", b: false),
    Question(a:"The hummingbird egg is the world's smallest bird egg.",b:true),
    Question(a: "South Africa has one capital", b: false),
    Question(a: "Greenland is the largest island in the world.", b: true),
    Question(a: "There are more countries in South America than Africa.", b: false),
    Question(a: "Humans lose more than 80% of heat from their feet.", b: false),
    Question(a: "Cheesecake comes from Italy.", b: false),
    Question(a: "The letter “J” is the only letter in the alphabet not included in the periodic table", b:true),
    Question(a: "he Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies.", b: true),
    Question(a: "Every country in the world has a rectangular flag", b: false)
    
  ];
  int _questionNumber = 0;
  String getQuestion() {
    return _questionBase[_questionNumber].questionText;
  }
  bool getAnswer() {
    return _questionBase[_questionNumber].questionAnswer;
  }
  void questionIncrement(){
    if(_questionNumber<_questionBase.length-1){
      _questionNumber=_questionNumber+1;
    }

  }
  int getLength(){
    return _questionBase.length;
  }
  // bool hasNextQus(){
  //   if(_questionNumber>_questionBase.length-1){
  //     return false;
  //   }
  //   else {
  //     return true;
  //   }
  // }
}