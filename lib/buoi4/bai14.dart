import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _clickCount = 0; // Biến đếm số lần nhấn nút

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('2822-Hồ Nhật Quang'), // Tiêu đề của AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextButton hiển thị nút bấm
              TextButton(
                onPressed: () {
                  setState(() {
                    _clickCount++; // Tăng biến đếm mỗi khi nhấn
                  });
                  print('TextButton pressed'); // In ra log khi nhấn nút
                },
                child: Text(
                  'Click Me!', // Văn bản hiển thị trên nút
                  style: TextStyle(fontSize: 20), // Kiểu chữ
                ),
              ),
              SizedBox(height: 20), // Khoảng cách giữa nút và đếm số
              Text(
                'Count: $_clickCount', // Hiển thị số lần nhấn
                style: TextStyle(fontSize: 24), // Kiểu chữ
              ),
            ],
          ),
        ),
      ),
    );
  }
}