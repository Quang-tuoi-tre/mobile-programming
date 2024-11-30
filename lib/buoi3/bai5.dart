import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Stack(
            children: [
              // Container màu xanh
              Container(
                width: 200,
                height: 150,
                color: Colors.blue,
              ),
              // Container màu đỏ ở góc trên bên trái
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
