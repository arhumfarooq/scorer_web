import 'package:flutter/material.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/splash_Screen.dart';
import 'package:scorer_web/view/start_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: StartScreen()
    );
  }
}
