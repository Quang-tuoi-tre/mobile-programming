import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleDialogExample(),
    );
  }
}

class SimpleDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2822-Hồ Nhật Quang'), // Tiêu đề AppBar
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Phương thức hiển thị SimpleDialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text('Select an option'), // Tiêu đề của SimpleDialog
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        // Hành động khi chọn Option 1
                        Navigator.of(context).pop();
                        print('Option 1 selected');
                      },
                      child: Text('Option 1'), // Nội dung Option 1
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        // Hành động khi chọn Option 2
                        Navigator.of(context).pop();
                        print('Option 2 selected');
                      },
                      child: Text('Option 2'), // Nội dung Option 2
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show SimpleDialog'), // Nội dung nút bấm
        ),
      ),
    );
  }
}