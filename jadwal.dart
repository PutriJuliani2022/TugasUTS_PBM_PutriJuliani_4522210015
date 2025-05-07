import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  final List<Map<String, String>> _jadwal = const [
    {"hari": "Senin", "mataKuliah": "Pemrograman Berbasis Mobile - 08.00"},
    {"hari": "Senin", "mataKuliah": "Ethical Hacking - 10.30"},
    {"hari": "Selasa", "mataKuliah": "Metodologi Penelitian - 11.20"},
    {
      "hari": "Selasa",
      "mataKuliah": "Prak.Pemrograman Berbasis Mobile - 13.50",
    },
    {"hari": "Rabu", "mataKuliah": "Manajemen Proyek - 09.41"},
    {"hari": "Kamis", "mataKuliah": "Computer Forensic - 10.30"},
    {"hari": "Jumat", "mataKuliah": "Geoinformatika - 08.00"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jadwal Kuliah')),
      body: ListView.builder(
        itemCount: _jadwal.length,
        itemBuilder: (context, index) {
          final item = _jadwal[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.schedule, color: Colors.green),
              title: Text(item['hari'] ?? ''),
              subtitle: Text(item['mataKuliah'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}
