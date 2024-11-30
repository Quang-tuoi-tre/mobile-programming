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
          title: Text('2180602822-Ho Nhat Quang'), // Tiêu đề của AppBar
        ),
        body: Stack(
          // Stack dùng để xếp chồng các widget
          children: <Widget>[
            // Định vị ở góc trên bên trái
            Positioned(
              top: 50, // Cách cạnh trên của Stack 50 pixel
              left: 50, // Cách cạnh trái của Stack 50 pixel
              child: Container(
                width: 100, // Chiều rộng của Container
                height: 100, // Chiều cao của Container
                color: Colors.blue, // Màu nền của Container
                child: Center(
                  child: Text(
                    'Top Left', // Nội dung hiển thị
                    style: TextStyle(color: Colors.white), // Màu chữ
                  ),
                ),
              ),
            ),
            // Định vị ở góc trên bên phải
            Positioned(
              top: 50, // Cách cạnh trên của Stack 50 pixel
              right: 50, // Cách cạnh phải của Stack 50 pixel
              child: Container(
                width: 100, // Chiều rộng của Container
                height: 100, // Chiều cao của Container
                color: Colors.green, // Màu nền của Container
                child: Center(
                  child: Text(
                    'Top Right', // Nội dung hiển thị
                    style: TextStyle(color: Colors.white), // Màu chữ
                  ),
                ),
              ),
            ),
            // Định vị ở góc dưới bên trái
            Positioned(
              bottom: 50, // Cách cạnh dưới của Stack 50 pixel
              left: 50, // Cách cạnh trái của Stack 50 pixel
              child: Container(
                width: 100, // Chiều rộng của Container
                height: 100, // Chiều cao của Container
                color: Colors.red, // Màu nền của Container
                child: Center(
                  child: Text(
                    'Bottom Left', // Nội dung hiển thị
                    style: TextStyle(color: Colors.white), // Màu chữ
                  ),
                ),
              ),
            ),
            // Định vị ở góc dưới bên phải
            Positioned(
              bottom: 50, // Cách cạnh dưới của Stack 50 pixel
              right: 50, // Cách cạnh phải của Stack 50 pixel
              child: Container(
                width: 100, // Chiều rộng của Container
                height: 100, // Chiều cao của Container
                color: Colors.yellow, // Màu nền của Container
                child: Center(
                  child: Text(
                    'Bottom Right', // Nội dung hiển thị
                    style: TextStyle(color: Colors.black), // Màu chữ
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
