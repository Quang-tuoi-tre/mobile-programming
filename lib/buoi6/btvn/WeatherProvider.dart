import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'WeatherModel.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weather;

  WeatherModel? get weather => _weather;

  Future<void> fetchWeather(String city) async {
    const apiKey = 'YOUR_API_KEY'; // Thay thế bằng API key của bạn
    final uri = Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      _weather = WeatherModel.fromJson(data);
      notifyListeners();
    } else {
      // Xử lý lỗi khi gọi API thất bại
      print('Lỗi khi gọi API: ${response.statusCode}');
    }
  }
}