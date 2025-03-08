import 'package:flutter/material.dart';

class AppColors {
  // Background Gradient

  static const LinearGradient gradientBackground = LinearGradient(
    colors: [Color(0xFFe81cff), Color(0xFF40c9ff)],
    begin: Alignment.topRight,
    end: Alignment.bottomCenter,
    // stops: [0.0, 0.5, 0.9],
  );

  // Primary Colors
  static const Color primaryColor = Color(0xFFe81cff);
  static const Color secondaryColor = Color(0xFF40c9ff);
}
