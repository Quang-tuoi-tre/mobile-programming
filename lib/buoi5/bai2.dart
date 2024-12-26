import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
        appBar: AppBar(title: const Text("Flutter Animate - Complex Demo")),
        body: Center(
          child: AnimateCard(),
        ),
      ),
    );
  }
}

class AnimateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Center(
        child: Text(
          "Flutter Animate",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 800.ms)
        .scale(
      begin: Offset(0.5, 0.5),
      end: Offset(1.0, 1.0),
      duration: 1000.ms,
    )
        .slideY(begin: -1.0, end: 0.0, duration: 800.ms)
        .rotate(begin: -0.5, end: 0.0, duration: 1200.ms)
        .then()
        .color(
      begin: Colors.blue,
      end: Colors.green,
      duration: 1000.ms,
    )
        .shake(hz: 2);
  }
}