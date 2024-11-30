import 'package:flutter/material.dart';

// Lớp chính của ứng dụng kế thừa StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Giao diện chính của ứng dụng
      home: Scaffold(
        appBar: AppBar(
          title: Text('Border Example'), // Tiêu đề trong AppBar
        ),
        body: Center(
          // Đặt nội dung vào giữa màn hình
          child: Container(
            width: 300, // Chiều rộng của Container
            height: 300, // Chiều cao của Container
            decoration: BoxDecoration(
              // Sử dụng BoxDecoration để thêm trang trí cho Container
              border: Border.all(
                color: Colors.blue, // Màu viền
                width: 5, // Độ dày của viền
              ),
            ),
            child: Center(
              
              // Căn giữa nội dung bên trong Container
              child: Text('2180602822-Hồ Nhật Quang\n21DTHC1\nhonhatquang890@gmail.com'), // Nội dung hiển thị trong Container
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