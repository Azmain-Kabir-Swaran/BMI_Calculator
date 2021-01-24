import 'dart:math';

import 'package:flutter/material.dart';


class CalculatorBrain {

  final int heightValue;
  final int weightValue;
  double _bmi;

  CalculatorBrain({this.heightValue, this.weightValue});

  String calculateBMI() {
    _bmi = weightValue/pow(heightValue/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    }
    else if (_bmi >= 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    }
    else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}