import 'package:flutter/material.dart';

class ProviderButton extends ChangeNotifier{

  Color color = Colors.white;
  bool estadoColor = false;
  int likes = 0;

  void likesState() {
    estadoColor = !estadoColor;
    if (estadoColor) {
      color = Colors.red;
      likes ++;
    } else {
      color = Colors.white;
      likes --;
    }
    notifyListeners();
  }
}