import 'package:flutter/material.dart';

class NotifikasiPage extends StatelessWidget {
  // Contoh daftar notifikasi
  final List<Map<String, String>> notifikasi = [
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Pemrograman Berbasis Mobile akan dimulai tanggal 5 Mei 2025.',
      'tanggal': '2025-05-05',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Ethical Hacking akan dimulai tanggal 5 Mei 2025.',
      'tanggal': '2025-05-05',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Metodologi Penelitian akan dimulai tanggal 6 Mei 2025.',
      'tanggal': '2025-05-06',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi':
          'UTS Prak.Pemrograman Berbasis Mobile akan dimulai tanggal 6 Mei 2025.',
      'tanggal': '2025-05-06',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Manajemen Proyek akan dimulai tanggal 7 Mei 2025.',
      'tanggal': '2025-05-07',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Computer Forensic akan dimulai tanggal 8 Mei 2025.',
      'tanggal': '2025-05-08',
    },
    {
      'judul': 'Pengumuman UTS',
      'isi': 'UTS Geoinformatika akan dimulai tanggal 9 Mei 2025.',
      'tanggal': '2025-05-09',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifikasi')),
      body:
          notifikasi.isEmpty
              ? Center(
                child: Text(
                  'Belum ada notifikasi.',
                  style: TextStyle(fontSize: 18),
                ),
              )
              : ListView.builder(
                itemCount: notifikasi.length,
                itemBuilder: (context, index) {
                  final item = notifikasi[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.notifications, color: Colors.blue),
                      title: Text(item['judul'] ?? ''),
                      subtitle: Text('${item['isi']}\n${item['tanggal']}'),
                      isThreeLine: true,
                    ),
                  );
                },
              ),
    );
  }
}
