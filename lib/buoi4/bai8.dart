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
          title: Text('2180602822-Ho Nhat Quang'), // Tiêu đề trong AppBar
        ),
        body: ListView(
          children: <Widget>[
            // Mục đầu tiên với icon Map
            ListTile(
              leading: Icon(Icons.map), // Icon bên trái
              title: Text('Map'), // Tiêu đề
            ),
            // Mục thứ hai với icon Photo Album
            ListTile(
              leading: Icon(Icons.photo_album), // Icon bên trái
              title: Text('Album'), // Tiêu đề
            ),
            // Mục thứ ba với icon Phone
            ListTile(
              leading: Icon(Icons.phone), // Icon bên trái
              title: Text('Phone'), // Tiêu đề
            ),
          ],
        ),
      ),
    );
  }
}