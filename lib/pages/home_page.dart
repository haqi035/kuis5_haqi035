import 'package:flutter/material.dart';
import 'profile_card_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FF), // Biru muda UMSIDA
      appBar: AppBar(
        backgroundColor: const Color(0xFF0057D9),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Beranda",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_rounded,
                size: 90,
                color: Colors.blue.shade700,
              ),
              const SizedBox(height: 20),

              const Text(
                "Selamat Datang di Aplikasi Profil Mahasiswa",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF003A8C),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                "Klik tombol di bawah untuk melihat kartu profil mahasiswa.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue.shade800,
                ),
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0057D9),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileCardPage(),
                    ),
                  );
                },
                child: const Text(
                  "Lihat Kartu Profil",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
