
import 'dart:convert'; // Thư viện cần thiết để làm việc với JSON
// Định nghĩa lớp User với các thuộc tính name và age
class User {
  String name;  // Thuộc tính lưu trữ tên người dùng
  int age;      // Thuộc tính lưu trữ tuổi người dùng

  // Constructor yêu cầu các tham số name và age khi tạo đối tượng User
  User({required this.name, required this.age});

  // Phương thức factory để chuyển đổi từ JSON (Map) sang đối tượng Dart
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],  // Lấy giá trị 'name' từ JSON và gán cho thuộc tính name
      age: json['age'],    // Lấy giá trị 'age' từ JSON và gán cho thuộc tính age
    );
  }
}


void main() {
  // Chuỗi JSON chứa thông tin người dùng
  String jsonString = '{"name":"Hồ Nhật Quang - 2180602822","age":21}';

  // Giải mã chuỗi JSON thành đối tượng Map
  Map<String, dynamic> userMap = jsonDecode(jsonString);

  // Tạo đối tượng User từ Map vừa giải mã được
  User user = User.fromJson(userMap);

  // In ra thông tin người dùng
  print('Name: ${user.name}, Age: ${user.age}');
  // Output: Name: Khuyên, Age: 26
}