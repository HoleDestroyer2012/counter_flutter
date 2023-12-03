import "dart:async";

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Counter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Text(
                'tap "-" to decrement',
                style: TextStyle(color: Colors.white),
              ),
              CounterWidget(),
              Text(
                'tap "+" to increment',
                style: TextStyle(color: Colors.white),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 88, 102, 203),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 50;

  @override
  void initState() {
    count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(children: [
          TextButton(
            onPressed: () {
              setState(() {
                count += 1;
              });
            },
            child: Text(
              "+",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            "${(count)}",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  count -= 1;
                });
              },
              child: Text(
                "-",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ))
        ]),
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.indigo),
      ),
    );
  }
}
