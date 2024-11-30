import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogExample(),
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2822-Hồ Nhật Quang'), // Tiêu đề AppBar
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Phương thức hiển thị AlertDialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Alert'), // Tiêu đề của AlertDialog
                  content: Text('This is an alert dialog'), // Nội dung của AlertDialog
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Hành động khi nhấn nút OK
                        Navigator.of(context).pop(); // Đóng AlertDialog
                      },
                      child: Text('OK'), // Nội dung nút
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show AlertDialog'), // Nội dung nút bấm
        ),
      ),
    );
  }
}