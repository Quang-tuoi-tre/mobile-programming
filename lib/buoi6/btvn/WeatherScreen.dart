import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'WeatherModel.dart';
import 'WeatherProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherProvider()),
      ],
      child: MaterialApp(
        home: WeatherScreen(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(), // Directly display the WeatherScreen
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ứng dụng Thời tiết'),
      ),
      body: Consumer<WeatherProvider>(
        builder: (context, weatherProvider, child) {
          return weatherProvider.weather == null
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thành phố: ${weatherProvider.weather!.city}',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Nhiệt độ: ${weatherProvider.weather!.temperature}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Cảm giác: ${weatherProvider.weather!.feelsLike}°C',
                    style: TextStyle(fontSize: 16),
                  ),
                  // Thêm các thông tin khác như độ ẩm, gió, ...
                  Image.network(
                    'http://openweathermap.org/img/wn/${weatherProvider.weather!.icon}@2x.png',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}