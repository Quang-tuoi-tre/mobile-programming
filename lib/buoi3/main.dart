import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetsExample(),
    );
  }
}

class WidgetsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets 1 Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: Colors.yellow, size: 50.0),
            Icon(Icons.star, color: Colors.yellow, size: 50.0),
            Icon(Icons.star, color: Colors.yellow, size: 50.0),
          ],
        ),
      ),
    );
  }
}