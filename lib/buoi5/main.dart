import 'package:flutter/material.dart';
import 'weather_service.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  @override
  _WeatherHomePageState createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  final TextEditingController _cityController = TextEditingController();
  Future<Map<String, dynamic>>? _weatherData;
  Future<List<dynamic>>? _forecastData;

  void _searchWeather(String city) {
    if (city.isNotEmpty) {
      setState(() {
        _weatherData = fetchWeather(city);
        _forecastData = fetchWeatherForecast(city);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade700],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Dự báo thời tiết',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _cityController,
                      onChanged: _searchWeather, // Kích hoạt tìm kiếm khi nhập
                      decoration: InputDecoration(
                        hintText: 'Nhập tên thành phố...',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Weather Information
              Expanded(
                child: _weatherData == null
                    ? Center(
                  child: Text(
                    'Hãy nhập tên thành phố để xem thời tiết!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
                    : FutureBuilder<Map<String, dynamic>>(
                  future: _weatherData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Lỗi: ${snapshot.error}',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    } else {
                      final data = snapshot.data!;
                      final cityName = data['name'];
                      final temp = data['main']['temp'];
                      final description =
                      data['weather'][0]['description'];
                      final icon = data['weather'][0]['icon'];
                      final humidity = data['main']['humidity'];
                      final windSpeed = data['wind']['speed'];

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cityName,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Image.network(
                            'http://openweathermap.org/img/wn/$icon@2x.png',
                            scale: 0.8,
                          ),
                          SizedBox(height: 20),
                          Text(
                            '${temp.toStringAsFixed(1)}°C',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.water_drop,
                                      color: Colors.white, size: 28),
                                  SizedBox(height: 5),
                                  Text(
                                    'Độ ẩm: $humidity%',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(width: 40),
                              Column(
                                children: [
                                  Icon(Icons.air,
                                      color: Colors.white, size: 28),
                                  SizedBox(height: 5),
                                  Text(
                                    'Gió: ${windSpeed.toStringAsFixed(1)} m/s',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () async {
                              final forecast = await _forecastData;
                              if (forecast != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ForecastDetailsPage(
                                          forecastData: forecast,
                                        ),
                                  ),
                                );
                              }
                            },
                            child: Text('Xem dự báo 5 ngày', style:TextStyle(color:Colors.white)),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForecastDetailsPage extends StatelessWidget {
  final List<dynamic> forecastData;

  ForecastDetailsPage({required this.forecastData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dự báo 5 ngày'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: forecastData.length,
        itemBuilder: (context, index) {
          final item = forecastData[index];
          final dateTime = DateTime.parse(item['dt_txt']);
          final temp = item['main']['temp'];
          final description = item['weather'][0]['description'];
          final icon = item['weather'][0]['icon'];

          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Image.network(
                  'http://openweathermap.org/img/wn/$icon.png'),
              title: Text(
                '${dateTime.day}/${dateTime.month} - ${dateTime.hour}:00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  '${temp.toStringAsFixed(1)}°C - $description'.toUpperCase()),
            ),
          );
        },
      ),
    );
  }
}
