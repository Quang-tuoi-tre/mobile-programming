import 'package:flutter/material.dart';

class WidgetsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets Example'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.yellow,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Text(
                  'Hồ Nhật Quang',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Text(
                  'Hồ Nhật Quang',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Text(
                  'Hồ Nhật Quang',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text(
                  'Hồ Nhật Quang',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WidgetsExample(),
  ));
}