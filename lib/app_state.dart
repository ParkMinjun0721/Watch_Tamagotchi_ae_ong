// app_state.dart
import 'package:flutter/material.dart';

class TamagotchiState extends ChangeNotifier {
  int _food = 50;
  int _mood = 50;
  int _health = 50;
  int _sleep = 50;

  int get food => _food;
  int get mood => _mood;
  int get health => _health;
  int get sleep_value => _sleep;

  void feed() {
    _food = (_food + 10).clamp(0, 100);
    notifyListeners();
  }

  void play() {
    _mood = (_mood + 10).clamp(0, 100);
    notifyListeners();
  }

  void exercise() {
    _health = (_health + 10).clamp(0, 100);
    notifyListeners();
  }

  void sleep() {
    _sleep = (_sleep + 10).clamp(0, 100);
    notifyListeners();
  }
}
