import 'package:flutter/material.dart';

class StateData extends ChangeNotifier {
  int value = 0;
  Increment() {
    value++;
    notifyListeners();
  }
}
