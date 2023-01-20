import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class signintest extends StatefulWidget {
  @override
  _signintestState createState() => _signintestState();
}

class _signintestState extends State<signintest> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _signIn();
    }
  }

  void _signIn() {
    print("suis la");
    final response = http.post(
      Uri.parse("http://localhost:3000/api/login"),
      body: jsonEncode(<String, String>{
        'email': _email,
        'password': _password,
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response == 200) {
      Navigator.of(context).pushReplacementNamed('/home');
      print('connexion succesful');
    } else {
      print('Sign in failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              onSaved: (value) => _email = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              onSaved: (value) => _password = value!,
            ),
            RaisedButton(
              onPressed: _submit,
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
