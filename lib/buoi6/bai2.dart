import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/counter.dart'; // Import Counter model

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Sử dụng Consumer để lắng nghe và cập nhật giao diện khi trạng thái thay đổi
          Consumer<Counter>(
            builder: (context, counter, child) {
              return Text(
                'Current count: ${counter.count}',
                style: TextStyle(fontSize: 24),
              );
            },
          ),
          SizedBox(height: 20),
          // Nút tăng giá trị với Provider.of()
          ElevatedButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).increment();
            },
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}