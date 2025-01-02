import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CounterController.dart'; // Import CounterController

class CounterApp extends StatelessWidget {
  final CounterController c = Get.put(CounterController()); // Khởi tạo Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Counter App"),
      ),
      body: Center(
        // Sử dụng Obx để tự động lắng nghe thay đổi của biến count
        child: Obx(() => Text(
          "Count: ${c.count}",
          style: const TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: c.increment, // Gọi hàm tăng
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: c.decrement, // Gọi hàm giảm
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
