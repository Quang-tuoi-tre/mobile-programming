import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thông tin sinh viên',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentInfoForm(),
    );
  }
}

class StudentInfoForm extends StatelessWidget {
  const StudentInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100], // Nền màu xanh dương nhạt
      appBar: AppBar(
        title: const Text('Thông tin sinh viên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tiêu đề
            const Text(
              'Thông tin sinh viên',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // MSSV
            const TextField(
              decoration: InputDecoration(
                labelText: 'MSSV',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Họ và tên
            const TextField(
              decoration: InputDecoration(
                labelText: 'Họ và tên',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Lớp
            const TextField(
              decoration: InputDecoration(
                labelText: 'Lớp',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Môn học
            const TextField(
              decoration: InputDecoration(
                labelText: 'Môn học',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            // Nút lưu thông tin
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý khi nhấn nút "Lưu thông tin"
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 12.0),
                ),
                child: const Text(
                  'Lưu thông tin',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
