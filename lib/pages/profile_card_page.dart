import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FF), // Biru muda lembut
      appBar: AppBar(
        backgroundColor: const Color(0xFF0057D9), // Biru tua UMSIDA
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Kartu Profil Mahasiswa",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 350, // biar card nggak kepencet penuh kiri-kanan
            child: const ProfileCard(),
          ),
        ),
      ),
    );
  }
}
