import 'package:flutter/material.dart';
import '../pages/detail_mahasiswa_page.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: scale,
      duration: const Duration(milliseconds: 150),
      child: Material(
        // Material NEEDED untuk menampilkan ripple
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.white.withOpacity(0.2),      // Ripple putih lembut
          highlightColor: Colors.white.withOpacity(0.1),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailMahasiswaPage(
                  nama: "Ahmad Baihaqi",
                  nim: "231080200035",
                  prodi: "Informatika",
                  foto: "assets/profile.jpg",
                ),
              ),
            );
          },
          onTapDown: (_) => setState(() => scale = 0.96),
          onTapCancel: () => setState(() => scale = 1.0),
          onTapUp: (_) => setState(() => scale = 1.0),

          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF0057D9),
                  Color(0xFF3FA9F5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 12,
                  spreadRadius: 2,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                ),
                const SizedBox(height: 15),

                const Text(
                  "Ahmad Baihaqi Hafid",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 8),
                const Text(
                  "NIM: 231080200035",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Prodi: Informatika",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailMahasiswaPage(
                          nama: "Ahmad Baihaqi Hafid",
                          nim: "231080200035",
                          prodi: "Informatika",
                          foto: "assets/profile.jpg",
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Lihat Detail",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
