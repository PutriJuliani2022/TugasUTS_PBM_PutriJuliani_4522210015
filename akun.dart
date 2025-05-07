import 'package:flutter/material.dart';
import 'notifikasi.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Akun')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: Putri Juliani', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('NIM: 4522210015', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(
              'Email: 4522210015@univpancasila.ac.id',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),

            // Tombol ke halaman notifikasi
            ElevatedButton.icon(
              icon: Icon(Icons.notifications),
              label: Text('Lihat Notifikasi'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifikasiPage()),
                );
              },
            ),
            SizedBox(height: 20),

            // Tombol logout
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Logout berhasil')));
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
