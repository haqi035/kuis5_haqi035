import 'package:flutter/material.dart';

class DetailMahasiswaPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;
  final String foto;

  const DetailMahasiswaPage({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0057D9),
        foregroundColor: Colors.white,
        title: const Text("Detail Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage(foto),
            ),
            const SizedBox(height: 15),

            Text(
              nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003A8C),
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "$nim • $prodi",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue.shade600,
              ),
            ),

            const SizedBox(height: 22),

            // CARD Informasi
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tentang Mahasiswa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF003A8C),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mahasiswa aktif Program Studi Informatika dengan minat "
                    "dalam pengembangan aplikasi berbasis web, data science, "
                    "dan teknologi informasi. Memiliki semangat belajar tinggi, dst...",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Sosial media / kontak
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue.shade800),
                const SizedBox(width: 6),
                Text("baihaqi@example.com",
                    style: TextStyle(color: Colors.blue.shade900)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
