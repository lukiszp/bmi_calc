// import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int? height;
  final int? weight;

  double _bmi = 0;

  String getResult() {
    if (_bmi < 18.5) {
      return "UNDERWEIGHT";
    } else if (_bmi > 18.5 && _bmi < 25) {
      return "NORMAL";
    } else if (_bmi > 25 && _bmi < 30) {
      return "OVERWEIGHT";
    } else if (_bmi > 30 && _bmi < 35) {
      return "OBESITY I";
    } else if (_bmi > 35 && _bmi < 40) {
      return "OBESITY II";
    } else {
      return "EXTREME OBESITY";
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return "You have a lower than normal body weight. Try to eat a bit more.";
    } else if (_bmi > 18.5 && _bmi < 25) {
      return "You have a normal body weight. Good job!";
    } else if (_bmi > 25 && _bmi < 30) {
      return "You have a higher than normal body weight. Try to excercise more.";
    } else if (_bmi > 30 && _bmi < 35) {
      return "You have a very higher than normal body weight. You should eat less and excercise.";
    } else if (_bmi > 35 && _bmi < 40) {
      return "You have a very higher than normal body weight. You should eat less and excercise.";
    } else {
      return "You have a very higher than normal body weight. Better to consult your doctor.";
    }
  }

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
}
