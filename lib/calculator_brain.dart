import 'dart:math';


class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;// сделали приватным, чтобы юзать во всех методах

  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return  _bmi!.toStringAsFixed(1);// adding ! to the private variable
  }

  String getResult(){
    if(_bmi! >= 25) { //adding ! to the private variable
      return 'Overweight';
    } else if (_bmi!>=18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpritation(){
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}