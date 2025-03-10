import 'package:flutter/material.dart';

class AppColors {
  // Background Gradient

  static const LinearGradient gradientBackground = LinearGradient(
    colors: [
      Color(0xFF6A00F4), // Başlangıç (Mor)
      Color(0xFFB100E8), // Orta Geçiş (Eflatun)
      Color(0xFFFF00A8), // Bitiş (Neon Pembe)]
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomCenter,
  );
}
