import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Counter model
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ho Nhat Quang'),
        ),
        body: const CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Using Consumer to listen and rebuild UI
          Consumer<Counter>(
            builder: (context, counter, child) {
              return Text(
                'Current count: ${counter.count}',
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Using Provider.of to access Counter and increment without listening
              Provider.of<Counter>(context, listen: false).increment();
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
