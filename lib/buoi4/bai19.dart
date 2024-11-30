import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>(); // Khóa toàn cục để quản lý trạng thái Form
  final _emailController = TextEditingController(); // Controller cho trường email
  final _passwordController = TextEditingController(); // Controller cho trường mật khẩu

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Nếu Form hợp lệ
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
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
          key: _formKey, // Gắn Form với GlobalKey
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController, // Kết nối Controller
                decoration: InputDecoration(
                  labelText: 'Email', // Nhãn của trường
                  border: OutlineInputBorder(), // Đường viền
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập Email'; // Kiểm tra nếu trường trống
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Email không hợp lệ'; // Kiểm tra định dạng email
                  }
                  return null; // Trường hợp hợp lệ
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController, // Kết nối Controller
                obscureText: true, // Ẩn nội dung
                decoration: InputDecoration(
                  labelText: 'Password', // Nhãn của trường
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập Password'; // Kiểm tra nếu trường trống
                  }
                  if (value.length < 6) {
                    return 'Password phải có ít nhất 6 ký tự'; // Kiểm tra độ dài
                  }
                  return null; // Trường hợp hợp lệ
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login, // Gọi hàm đăng nhập
                child: Text('Đăng nhập'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}