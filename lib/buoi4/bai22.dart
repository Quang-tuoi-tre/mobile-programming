import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SnackBarExample(),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2822-Hồ Nhật Quang'), // Tiêu đề AppBar
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Phương thức để hiển thị SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is a SnackBar'), // Nội dung thông báo
                action: SnackBarAction(
                  label: 'Undo', // Nút hành động trên SnackBar
                  onPressed: () {
                    // Hành động khi nhấn nút Undo
                    print('Undo action triggered');
                  },
                ),
                duration: Duration(seconds: 3), // Thời gian hiển thị SnackBar
              ),
            );
          },
          child: Text('Show SnackBar'), // Nội dung nút
        ),
      ),
    );
  }
}