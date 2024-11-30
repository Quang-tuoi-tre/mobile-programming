import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Align Example"),
        ),
        body: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),
        /*  Center(
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: Alignment(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),*/

      /*  Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment(0.2, 0.6),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),*/

      ),
    );
  }
}
