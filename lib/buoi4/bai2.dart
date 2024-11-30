import 'package:flutter/material.dart';

// Lớp chính của ứng dụng kế thừa StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Cài đặt giao diện ứng dụng chính
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circle Avatar Example'), // Tiêu đề của AppBar
        ),
        body: Center(
          // Đặt nội dung vào giữa màn hình
          child: CircleAvatar(
            radius: 300, // Bán kính của CircleAvatar (kích thước vòng tròn)
            backgroundImage: NetworkImage(
              'https://scontent.fsgn6-2.fna.fbcdn.net/v/t39.30808-6/448670974_1929092200895008_9134633905404822321_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=z7XgYZXfVOkQ7kNvgH376BN&_nc_zt=23&_nc_ht=scontent.fsgn6-2.fna&_nc_gid=AhHFo6DsN7LGDwrEkYAtVng&oh=00_AYDa9COEkmD20OyNNHeM42y_nB-osKHCaX6XzVnBlNln9A&oe=67508611',

            ),
              child: Text('2180602822-Hồ Nhật Quang\n21DTHC1\nhonhatquang890@gmail.com')// Ảnh nền từ đường dẫn URL
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp()); // Chạy ứng dụng với lớp MyApp
}