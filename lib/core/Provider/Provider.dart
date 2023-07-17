import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _username = 'user';
  String get username => _username;
  set username(String newValue) {
    _username = newValue;
    notifyListeners();
  }

  String _password = 'password';
  String get password => _password;
  set email(String newValue) {
    _password = newValue;
    notifyListeners();
  }
}
