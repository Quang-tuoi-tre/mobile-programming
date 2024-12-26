import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Bộ đếm sử dụng GetX Controller
class CounterController extends GetxController {
  // Biến đếm sử dụng RxInt để hỗ trợ lắng nghe thay đổi
  var count = 0.obs;

  void increment() => count++;
  void decrement() => count--;
}

void main() {
  runApp(GetMaterialApp(
    home: CounterApp(),
  ));
}

class CounterApp extends StatelessWidget {
  // Khởi tạo Controller
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2180602822-Hồ Nhat Quang"),
      ),
      body: Center(
        child: Obx(() =>
            Text(
              "Count: ${controller.count}",
              style: const TextStyle(fontSize: 24),
            )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: controller.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}