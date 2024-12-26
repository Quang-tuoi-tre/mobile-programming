import 'package:flutter/material.dart';
import 'models/note.dart';
import 'utils/database_helper.dart';

void main() {
  runApp(MyApp()); // Đã bọc trong MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Đã bọc trong MaterialApp
      title: 'My Notes App', // Có thể đặt title cho app
      home: MyHomePage(), // Trang chủ của bạn
    );
  }
}




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Note>> _notesFuture;

  @override
  void initState() {
    super.initState();
    _notesFuture = DatabaseHelper.instance.getAllNotes();
  }

  _addNote() async {
    String title = '';
    String content = '';

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thêm ghi chú mới'),
          content: SingleChildScrollView( // Để tránh tràn màn hình khi bàn phím hiện lên
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Tiêu đề'),
                  onChanged: (value) => title = value,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Nội dung'),
                  maxLines: 5, // Cho phép nhập nhiều dòng
                  onChanged: (value) => content = value,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Hủy'),
            ),
            TextButton(
              onPressed: () async {
                if (title.trim().isEmpty) { // Kiểm tra tiêu đề trống (sau khi bỏ khoảng trắng)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Vui lòng nhập tiêu đề')),
                  );
                  return; // Dừng việc thêm ghi chú
                }
                if (content.trim().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Vui lòng nhập nội dung')),
                  );
                  return; // Dừng việc thêm ghi chú
                }
                try {
                  Note newNote = Note(title: title, content: content);
                  await DatabaseHelper.instance.insert(newNote);

                  setState(() {
                    _notesFuture = DatabaseHelper.instance.getAllNotes();
                  });
                  Navigator.pop(context); // Đóng dialog sau khi lưu thành công
                } catch (e) {
                  // Xử lý lỗi nếu có lỗi khi insert vào database
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Lỗi khi lưu ghi chú: $e')),
                  );
                }
              },
              child: Text('Lưu'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ghi chú'),
      ),
      body: FutureBuilder<List<Note>>(
        future: _notesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Note note = snapshot.data![index];
                return ListTile(
                  title: Text(note.title),
                  subtitle: Text(note.content),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Lỗi: ${snapshot.error}'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        child: Icon(Icons.add),
      ),
    );
  }
}