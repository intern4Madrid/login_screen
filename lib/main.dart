import 'package:flutter/material.dart';
import 'package:login_screen/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}
