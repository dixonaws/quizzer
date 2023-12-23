import 'package:flutter/material.dart';
import './pages/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

//todo: add loading page/splash screen
//todo: test loading different pages and navigation (mitch koko video)
//todo: test showing a dailog box
//todo: drawers for profile and settings


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quizzer')
    );
  }
}

