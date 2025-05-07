import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Daftar kegiatan mahasiswa (ganti nama variabel menjadi 'putri')
  List<Map<String, dynamic>> putri = [
    {
      'nama': 'Ujian Tengah Semester - Pemrograman Berbasis Mobile',
      'tanggal': '2025-05-05',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Ethical Hacking',
      'tanggal': '2025-05-05',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Metodologi Penelitian',
      'tanggal': '2025-05-06',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Prak.Pemrograman Berbasis Mobile',
      'tanggal': '2025-05-06',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Manajemen Proyek',
      'tanggal': '2025-05-07',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Computer Forensic',
      'tanggal': '2025-05-08',
      'selesai': false,
    },
    {
      'nama': 'Ujian Tengah Semester - Geoinformatika',
      'tanggal': '2025-05-09',
      'selesai': false,
    },
    // Tambahkan kegiatan lain di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Kegiatan Mahasiswa')),
      body: ListView.builder(
        itemCount: putri.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(putri[index]['nama']),
            subtitle: Text(putri[index]['tanggal']),
            trailing: Checkbox(
              value: putri[index]['selesai'],
              onChanged: (bool? value) {
                setState(() {
                  putri[index]['selesai'] = value!;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
