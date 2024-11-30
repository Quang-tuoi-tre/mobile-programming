import 'package:flutter/material.dart';

// Lớp Profile để xây dựng giao diện hồ sơ
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hồ sơ'), // Tiêu đề AppBar
        centerTitle: true, // Căn giữa tiêu đề
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // Bo góc cho Card
          ),
          elevation: 6, // Đổ bóng cho Card
          margin: EdgeInsets.symmetric(horizontal: 16), // Lề của Card
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding bên trong Card
            child: Column(
              mainAxisSize: MainAxisSize.min, // Đảm bảo kích thước Card vừa với nội dung
              children: [
                // CircleAvatar hiển thị ảnh từ URL
                CircleAvatar(
                  radius: 50, // Kích thước của CircleAvatar
                  backgroundImage: NetworkImage(
                    'https://scontent.fsgn6-2.fna.fbcdn.net/v/t39.30808-6/448670974_1929092200895008_9134633905404822321_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=z7XgYZXfVOkQ7kNvgH376BN&_nc_zt=23&_nc_ht=scontent.fsgn6-2.fna&_nc_gid=AhHFo6DsN7LGDwrEkYAtVng&oh=00_AYDa9COEkmD20OyNNHeM42y_nB-osKHCaX6XzVnBlNln9A&oe=67508611',
                  ), // Ảnh từ URL
                ),
                SizedBox(height: 16), // Khoảng cách giữa ảnh và thông tin
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Căn trái nội dung
                  children: [
                    Text(
                      '2180602822',
                      style: TextStyle(
                        fontSize: 18, // Kích thước chữ
                        fontWeight: FontWeight.bold, // Chữ đậm
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Hồ Nhat Quang'),
                    SizedBox(height: 8),
                    Text('21DTHC1'),
                    SizedBox(height: 8),
                    Text('honhatquang890@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt banner debug
      home: Profile(), // Gọi màn hình Profile
    ),
  );
}
