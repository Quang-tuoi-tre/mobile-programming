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
          title: Text('SingleChildScrollView Example'), // Tiêu đề trong AppBar
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Dùng vòng lặp for để tạo các widget Text
              for (int i = 1; i <= 50; i++)
                Center(
                  child: Text(
                    'Ho Nhat Quang-2180602822 $i',
                    style: TextStyle(fontSize: 20), // Kích thước chữ
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}