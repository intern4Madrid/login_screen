import 'dart:convert';

import 'package:http/http.dart' as http;

class Login {
  Future<String> login({String? username, String? password}) async {
    String url = "http://10.21.0.109:8080/api/log_in";
    final response = await http.post(
      Uri.parse(
        url,
      ),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        <String, dynamic>{
          "username": username,
          "password": password,
        },
      ),
    );
    print("--------------");
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Server Error";
    }
  }
}
