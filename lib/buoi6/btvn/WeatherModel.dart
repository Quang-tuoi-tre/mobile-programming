class WeatherModel {
  final String city;
  final double temperature;
  final String temperatureUnit;
  final double feelsLike;
  final int humidity;
  final double windSpeed;
  final String windDirection;
  final String weatherDescription;
  final String icon; // Mã icon thời tiết (ví dụ: 01d, 10n)

  WeatherModel({
    required this.city,
    required this.temperature,
    required this.temperatureUnit,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
    required this.windDirection,
    required this.weatherDescription,
    required this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    // Tùy chỉnh theo cấu trúc dữ liệu trả về của API OpenMeteo
    return WeatherModel(
      city: json['city']['name'],
      temperature: json['current']['temperature'],
      temperatureUnit: '°C', // Hoặc '°F' tùy theo cấu hình
      feelsLike: json['current']['feels_like'],
      humidity: json['current']['humidity'],
      windSpeed: json['current']['wind_speed'],
      windDirection: json['current']['wind_direction'],
      weatherDescription: json['current']['weather'][0]['description'],
      icon: json['current']['weather'][0]['icon'],
    );
  }
}