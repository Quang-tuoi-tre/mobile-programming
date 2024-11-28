import 'dart:io';

// Định nghĩa lớp Person
class Person {
  // Thuộc tính
  String name;
  int age;
  int mssv;
  String khoa;
  String lop;

  // Phương thức khởi tạo
  Person(this.name, this.age, this.mssv, this.khoa, this.lop);

  // Phương thức để in thông tin
  void printInfo() {
    print('mssv: $mssv');
    print('Age: $age');
    print('Khoa: $khoa');
    print('Họ và tên: $name');
    print('Lớp: $lop');
  }
}

// Hàm để tính tổng hai số
int addNumbers(int a, int b) {
  return a + b;
}

// Hàm chính của chương trình
void main() {
  // Nhập tên từ người dùng
  stdout.write('Nhập mssv: ');
  int  mssv = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập họ và tên: ');
  String name = stdin.readLineSync()!;

  // Nhập tuổi từ người dùng
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập tên khoa: ');
  String khoa = stdin.readLineSync()!;
  stdout.write('Nhập tên lớp: ');
  String lop = stdin.readLineSync()!;
  // Tạo đối tượng Person
  Person person = Person(name, age, mssv, khoa,lop);

  // Gọi phương thức để in thông tin
  person.printInfo();

  // Sử dụng hàm để tính tổng hai số
  int sum = addNumbers(10, 20);
  print('Sum of 10 and 20 is: $sum');
}