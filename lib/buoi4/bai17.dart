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
          child: GestureDetector(
            onTap: () {
              // Hành động khi nhấn
              print('Container tapped');
            },
            onDoubleTap: () {
              // Hành động khi nhấn đúp
              print('Container double-tapped');
            },
            onLongPress: () {
              // Hành động khi nhấn giữ
              print('Container long-pressed');
            },
            child: Container(
              width: 100, // Chiều rộng của Container
              height: 100, // Chiều cao của Container
              color: Colors.blue, // Màu nền của Container
              child: Center(
                child: Text(
                  'Tap Me', // Nội dung hiển thị
                  style: TextStyle(color: Colors.white), // Màu chữ
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}