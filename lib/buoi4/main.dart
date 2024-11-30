import 'package:flutter/material.dart';

// Lớp chính của ứng dụng kế thừa StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Cài đặt giao diện ứng dụng chính
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'), // Tiêu đề của AppBar
        ),
        body: Center(
          // Đặt nội dung vào giữa màn hình
          child: Card(
            // Widget Card được dùng để hiển thị một khung với các tùy chỉnh
            elevation: 4.0, // Độ bóng của Card, giá trị càng cao thì bóng càng rõ
            child: Padding(
              // Thêm khoảng cách (padding) bên trong Card
              padding: const EdgeInsets.all(16.0),
              child: Text('2180602822-Hồ Nhật Quang\n21DTHC1\nhonhatquang890@gmail.com'), // Nội dung text hiển thị bên trong Card
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp()); // Chạy ứng dụng với lớp MyApp
}