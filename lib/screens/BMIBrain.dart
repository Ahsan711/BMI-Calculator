import 'dart:math';

class BMIBrain {
  BMIBrain({this.weight, this.height});
  int weight = 0;
  int height = 0;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'OverWeight';
    else if (_bmi > 28.5)
      return 'Normal';
    else
      return ' UnderWeight';
  }

  String getResultMessage() {
    if (_bmi >= 25)
      return 'You Are Over Weight and you should do some physical exercise';
    else if (_bmi > 28.5)
      return 'Hurry! Your Body Mass Index in Normal and You are Healthy';
    else
      return ' Alas! Your are in dire need to eat more as you are UnderWeight';
  }
}
