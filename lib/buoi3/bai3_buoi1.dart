// Định nghĩa lớp Car
class Car {
  // Thuộc tính của lớp Car
  String make;
  String model;
  int year;

  // Constructor để khởi tạo đối tượng
  Car(this.make, this.model, this.year);

  // Phương thức displayInfo để in thông tin xe
  void displayInfo() {
    print("Hãng xe: $make");
    print("Mẫu xe: $model");
    print("Năm sản xuất: $year");
  }
}

void main() {
  // Tạo đối tượng của lớp Car
  Car myCar = Car("VinFast", "VF9", 2024);

  // Gọi phương thức displayInfo để in thông tin xe
  myCar.displayInfo();
}
