// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './Text.dart';
import './TextControl.dart';

main(List<String> args) {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String percen = "0";
  String char = "%";
  int _value = 50;

  Future<void> change() async {
    int s = int.parse(percen);
    print("Increase");
    while (s != 100) {
      // sleep(const Duration(milliseconds: 50));
      await Future.delayed(Duration(milliseconds: _value));
      setState(() {
        s++;
        percen = s.toString();
      });
    }
  }

  Future<void> reset() async {
    int s = int.parse(percen);
    print("Decrease");
    while (s != 0) {
      // sleep(const Duration(milliseconds: 50));
      await Future.delayed(Duration(milliseconds: _value));
      setState(() {
        s--;
        percen = s.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Road to 100"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextPrint(percen + char, 50),
              TextControl(change, "Go to 100"),
              ElevatedButton(onPressed: reset, child: Text("Back to 0")),
              Slider(
                min: 0,
                max: 1000,
                value: _value.toDouble(),
                onChanged: (value) async {
                  setState(() {
                    _value = value.toInt();
                  });
                },
              ),
              TextPrint(_value.toString(), 20)
            ],
          ),
        ),
      ),
    );
  }
}
