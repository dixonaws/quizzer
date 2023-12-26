import 'package:flutter/material.dart';
import './pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

//todo: add loading page/splash screen: https://www.youtube.com/watch?v=baa0SlEDimk
//todo: test loading different pages and navigation (mitch koko video)
//todo: test showing a dialog box
//todo: drawers for profile and settings
//todo: toast settings are inconsistent across device types


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

