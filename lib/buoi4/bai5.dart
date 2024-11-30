import 'package:flutter/material.dart';

// Lớp chính của ứng dụng kế thừa StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Cấu hình ứng dụng Material
      home: Scaffold(
        appBar: AppBar(
          title: Text('EdgeInsets Example'), // Tiêu đề trong AppBar
        ),
        body: Center(
          // Đặt nội dung vào giữa màn hình
          child: Container(
            padding: EdgeInsets.all(16.0), // Tạo khoảng cách padding đều 16 ở mọi cạnh
            color: Colors.blue, // Màu nền của Container
            child: Text(
              '2180602822-Hồ Nhật Quang\n21DTHC1\nhonhatquang890@gmail.com', // Nội dung hiển thị trong Container
              style: TextStyle(
                color: Colors.white, // Màu chữ
                fontSize: 16, // Kích thước chữ
              ),
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