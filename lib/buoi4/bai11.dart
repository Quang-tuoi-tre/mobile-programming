import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expanded Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Expanded Example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2180602822 - Ho Nhat Quang'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 50,
            child: const Center(
              child: Text('Top Container'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Expanded giúp Container ở giữa chiếm không gian còn lại.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 50,
            child: const Center(
              child: Text('Bottom Container'),
            ),
          ),
        ],
      ),
    );
  }
}