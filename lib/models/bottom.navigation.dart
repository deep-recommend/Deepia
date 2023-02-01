import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationModel extends ChangeNotifier {
  int _currentIndex = 1;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}