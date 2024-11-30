import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedIndex = 0;

  // Danh sách màn hình tương ứng với các mục trong BottomNavigationBar
  final List<Widget> _screens = [
    Center(
      child: Text(
        'Ho Nhat Quang - 2180602822',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Search Screen',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Example'),
        backgroundColor: Colors.pink[50], // Màu nền AppBar
        elevation: 0,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange, // Màu mục được chọn
        unselectedItemColor: Colors.grey, // Màu mục không được chọn
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: Colors.pink[50], // Màu nền tổng thể
    );
  }
}
