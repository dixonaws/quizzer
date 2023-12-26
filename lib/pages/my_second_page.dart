import "package:flutter/material.dart";

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MySecondPage"),
        ),
        body: const Text("My Second Page"),
    );
  }
}
