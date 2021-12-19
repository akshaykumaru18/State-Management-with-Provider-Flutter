import 'package:flutter/material.dart';
class CounterModel extends ChangeNotifier{
  int counter = 0;
  set setCounter(int newVal){
    counter = newVal;
    notifyListeners();
  }
}