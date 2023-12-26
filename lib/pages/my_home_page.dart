import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'my_second_page.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Text('PageTwo'),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void setPage() {
    setState(() {
      // replace the main page
    });
  }

  void resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    ToastContext().init(context);

    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                print("Show menu dialog.");
              },
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Quizzer"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.account_box_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("Open account dialog");
                },
              ),
            )
          ],
        ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.black26),
              ),
            ),
            height: 74,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: const Text('First child of column'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(100),
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
          ),
          Center(
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.undo), label: "Reset Counter"),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: "Quiz Spaces"),
          BottomNavigationBarItem(
              icon: Icon(Icons.icecream_rounded), label: "Daily Top 3"),
        ],
        onTap: (index) {
          setState(() {
            // reset button pressed
            if (index == 0) {
              print("Reset button pressed");
              resetCounter();
            } else if (index == 1) {
              print("Quiz Spaces page");
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MySecondPage();
                },
              ));
            } else if (index == 2) {
              print("Daily Top 3 page");
            }
          });
        },
      ),
    );
  }
}
