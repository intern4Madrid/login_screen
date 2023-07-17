import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/Provider/Provider.dart';
import 'loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'User Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: loginScreen(),
      ),
    );
  }
}
