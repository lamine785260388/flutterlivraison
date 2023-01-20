import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/FoodDetailsPage.dart';
import 'package:flutter_application_1/pages/FoodOrderPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/SignInPage.dart';
import 'package:flutter_application_1/pages/SignUpPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    );
  }
}
