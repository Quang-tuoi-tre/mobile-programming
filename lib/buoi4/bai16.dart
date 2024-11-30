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
          child: OutlinedButton(
            onPressed: () {
              // Hành động khi nút được nhấn
              print('OutlinedButton pressed');
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.green, width: 2), // Đường viền màu xanh lá
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Khoảng cách trong nút
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Góc bo tròn
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.download, color: Colors.green), // Biểu tượng bên trái
                SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
                Text(
                  'Click OutlinedButton!', // Nội dung của nút
                  style: TextStyle(color: Colors.green, fontSize: 16), // Kiểu chữ
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}