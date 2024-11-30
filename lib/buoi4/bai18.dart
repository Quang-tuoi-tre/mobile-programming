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
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Khoảng cách giữa nội dung và cạnh màn hình
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name', // Nhãn bên trên trường nhập
                  border: OutlineInputBorder(), // Đường viền của TextField
                ),
              ),
              SizedBox(height: 16), // Khoảng cách giữa các TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email', // Nhãn bên trên trường nhập
                  border: OutlineInputBorder(), // Đường viền của TextField
                  hintText: 'example@mail.com', // Gợi ý nội dung nhập
                  prefixIcon: Icon(Icons.email), // Biểu tượng bên trái
                ),
                keyboardType: TextInputType.emailAddress, // Kiểu bàn phím nhập email
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true, // Ẩn nội dung nhập (dành cho mật khẩu)
                decoration: InputDecoration(
                  labelText: 'Enter your password', // Nhãn bên trên trường nhập
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility), // Biểu tượng bên phải
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}