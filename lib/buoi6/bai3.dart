import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Định nghĩa CounterObserver để theo dõi trạng thái
class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

void main() {
  // Đăng ký Observer để theo dõi thay đổi trạng thái
  Bloc.observer = CounterObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Example'),
        ),
        body: const CounterPage(),
      ),
    );
  }
}

// Định nghĩa CounterPage
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '2180602822-Hồ Nhat Quang',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}