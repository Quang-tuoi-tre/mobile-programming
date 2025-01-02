import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Counter Observer
class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

// Counter Cubit
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main() {
  // Đăng ký Observer để theo dõi trạng thái
  Bloc.observer = CounterObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ho Nhat Quang'),
        ),
        body: BlocProvider(
          create: (context) => CounterCubit(),
          child: const CounterPage(),
        ),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Centered Counter Display
        Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
        ),
        // Positioned FABs at bottom-right corner
        Positioned(
          bottom: 20,
          right: 20,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: context.read<CounterCubit>().increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 10),
              FloatingActionButton(
                onPressed: context.read<CounterCubit>().decrement,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
