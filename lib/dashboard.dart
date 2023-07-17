import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(16),
            child: SafeArea(
                child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  child: Image.asset('Avatar-Profile-PNG-Photos.png'),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
