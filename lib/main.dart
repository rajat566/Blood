import 'package:blood/onboardingscreen.dart';
import 'package:blood/project/login1.dart';
import 'package:blood/project/login2.dart';
import 'package:blood/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Blood Donation', home: LoginScreenn());
  }
}
