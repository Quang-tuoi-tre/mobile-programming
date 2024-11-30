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
          title: Text('2822-Hồ Nhật Quang'), // Tiêu đề AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo trục dọc
            children: <Widget>[
              // Hiển thị vòng tròn quay
              CircularProgressIndicator(),
              SizedBox(height: 20), // Khoảng cách giữa hai ProgressIndicator
              // Hiển thị thanh tiến trình
              LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}