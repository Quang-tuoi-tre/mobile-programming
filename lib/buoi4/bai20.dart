import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormExample(),
    );
  }
}

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>(); // Khóa toàn cục để quản lý trạng thái của Form

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Nếu dữ liệu hợp lệ
      print("Dữ liệu trong Form hợp lệ");
    } else {
      print("Dữ liệu trong Form không hợp lệ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2822-Hồ Nhật Quang'), // Tiêu đề AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Khoảng cách lề
        child: Form(
          key: _formKey, // Gắn khóa Form
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name', // Nhãn của trường nhập liệu
                  border: OutlineInputBorder(), // Đường viền của TextField
                ),
                validator: (value) {
                  // Hàm kiểm tra tính hợp lệ
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name'; // Thông báo lỗi
                  }
                  return null; // Dữ liệu hợp lệ
                },
              ),
              SizedBox(height: 16), // Khoảng cách giữa các widget
              ElevatedButton(
                onPressed: _submitForm, // Gọi hàm xử lý khi nhấn nút
                child: Text('Submit'), // Nội dung nút
              ),
            ],
          ),
        ),
      ),
    );
  }
}