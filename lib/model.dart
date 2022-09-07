import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyNum extends ChangeNotifier {
  int _num = 0;
  int get num => _num;

  getSP() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _num = (pref.getInt('num')) ?? 0;
  }

  setSP() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('num', _num);
    notifyListeners();
  }

  void changenumAdd() {
    _num++;
    setSP();
  }

  void changenumSub() {
    _num--;
    setSP();
  }
}
