import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // Biến quan sát được, bắt đầu từ giá trị 0

  void increment() => count++; // Hàm tăng giá trị biến count
  void decrement() => count--; // Hàm giảm giá trị biến count
}
