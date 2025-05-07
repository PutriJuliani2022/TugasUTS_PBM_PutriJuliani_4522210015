import 'package:flutter/material.dart';
import 'notifikasi.dart';
import 'home.dart';
import 'jadwal.dart';
import 'akun.dart';

void main() {
  runApp(Putri());
}

class Putri extends StatefulWidget {
  @override
  State<Putri> createState() => _PutriState();
}

class _PutriState extends State<Putri> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    JadwalPage(),
    NotifikasiPage(),
    AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade900,
          foregroundColor: Colors.white,
        ),
      ),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Mahasiswa'),
          actions: [
            Switch(
              value: _themeMode == ThemeMode.dark,
              onChanged: _toggleTheme,
              activeColor: Colors.white,
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: 'Jadwal',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          ],
        ),
      ),
    );
  }
}
