import 'dart:convert';
import 'package:http/http.dart' as http;

const apiKey = '36c03d297dd12f5d1af459dc67872546';

Future<Map<String, dynamic>> fetchWeather(String city) async {
  final url =
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Không tìm thấy dữ liệu thời tiết hiện tại');
  }
}

Future<List<dynamic>> fetchWeatherForecast(String city) async {
  final url =
      'https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$apiKey&units=metric';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['list'];
  } else {
    throw Exception('Không tìm thấy dữ liệu dự báo thời tiết');
  }
}
Future<Map<String, dynamic>> fetchWeatherByCoordinates(
    double lat, double lon) async {
  final url =
      'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Không tìm thấy dữ liệu thời tiết tại tọa độ này');
  }
}