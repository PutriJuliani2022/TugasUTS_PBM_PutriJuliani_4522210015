import 'package:flutter/material.dart';

class MataKuliahPage extends StatelessWidget {
  final List<String> mataKuliah = [
    'Pemrograman Berbasis Mobile',
    'Ethical Hacking',
    'Metodologi Penelitian',
    'Prak.Pemrograman Berbasis Mobile',
    'Manajemen Proyek',
    'Computer Forensic',
    'Geoinformatika',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Mata Kuliah')),
      body: ListView.builder(
        itemCount: mataKuliah.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mataKuliah[index]),
            leading: Icon(Icons.book),
          );
        },
      ),
    );
  }
}
