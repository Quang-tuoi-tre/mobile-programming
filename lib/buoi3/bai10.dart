import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuyển đổi nhiệt độ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chuyển đổi nhiệt độ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _temperatureController = TextEditingController();
  double _fahrenheit = 0;

  void _convertTemperature() {
    double celsius = double.tryParse(_temperatureController.text) ?? 0;
    setState(() {
      _fahrenheit = (celsius * 1.8) + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _temperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nhập nhiệt độ (độ C)',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${_fahrenheit.toStringAsFixed(2)} °F',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: _convertTemperature,
              tooltip: 'Chuyển đổi',
              child: const Icon(Icons.swap_horiz),
            ),
          ],
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoFromInternet extends StatefulWidget {
  const VideoFromInternet({super.key});

  @override
  State<VideoFromInternet> createState() => _VideoFromInternetState();
}

class _VideoFromInternetState extends State<VideoFromInternet> {
  late VideoPlayerController _controller; // Khai báo VideoPlayerController

  @override
  void initState() {
    super.initState();

    // Khởi tạo video từ URL
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )
      ..initialize().then((_) {
        // Khi video được khởi tạo xong, cập nhật giao diện
        setState(() {});
      })
      ..setLooping(true); // Lặp lại video
  }

  @override
  void dispose() {
    _controller.dispose(); // Hủy controller khi không dùng nữa
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video từ Internet'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hiển thị video
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            const SizedBox(height: 20),
            // Nút Play/Pause
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Icon(
                _controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
            ),
          ],
        )
            : const CircularProgressIndicator(), // Hiển thị khi video đang load
      ),
    );
  }
}
*/
