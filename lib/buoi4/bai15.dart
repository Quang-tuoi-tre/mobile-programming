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
          title: Text('2822-Hồ Nhật Quang'), // Tiêu đề của AppBar
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Hành động khi nút được nhấn
              print('ElevatedButton pressed');
            },
            child: Text('Press Me'), // Nội dung của nút
          ),
        ),
      ),
    );
  }
}