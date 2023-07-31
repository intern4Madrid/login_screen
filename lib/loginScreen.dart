import 'package:flutter/material.dart';
import 'package:login_screen/SignUp.dart';
import 'package:login_screen/bottomnavigation.dart';
import 'package:login_screen/core/Provider/Provider.dart';
import 'package:login_screen/core/services/login_api.dart';
import 'package:provider/provider.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  Login login = Login();
  bool _isHiddenPassword = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<UserProvider>(
        builder: (context, user, child) => SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.indigoAccent,
                      ),
                      child: Image.asset('images/madrid.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.normal,
                    fontSize: 32,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    obscureText: _isHiddenPassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _isHiddenPassword = !_isHiddenPassword;
                          });
                        },
                        child: const Icon(Icons.visibility),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                ),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String response = await login.login(
                              username: _usernameController.text,
                              password: _passwordController.text);
                          if (response.toLowerCase().contains("success")) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavigationScreen()),
                            );
                          } else {
                            print("Account not found");
                          }
                        }
                        /*if (_usernameController.text ==
                                user.username.toString() &&
                            _passwordController.text ==
                                user.password.toString()) {

                          String response = await login.login(username: _usernameController.text,password: _passwordController.text)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavigation()),
                          );
                        }*/
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.green,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
