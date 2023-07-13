import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create Account',
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'username',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text('LOGIN'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
