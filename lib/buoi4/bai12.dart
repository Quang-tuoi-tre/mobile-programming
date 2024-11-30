import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RotatedBox Example'), // Tiêu đề của AppBar
        ),
        body: Center(
          child: RotatedBox(
            quarterTurns: 3, // Xoay widget con 90 độ (1/4 vòng)
            child: Text(
              '2180602822 - Ho Nhat Quang', // Nội dung widget con
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Kiểu chữ
            ),
          ),
        ),
      ),
    );
  }
}