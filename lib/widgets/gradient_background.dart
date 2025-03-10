import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(gradient: GradientBody()),
          child: child,
        ),
      ],
    );
  }
}

class GradientBody extends LinearGradient {
  GradientBody()
    // Background Gradient
    : super(
        colors: [
          Color(0xFF6A00F4), // Başlangıç (Mor)
          Color(0xFFB100E8), // Orta Geçiş (Eflatun)
          Color(0xFFFF00A8), // Bitiş (Neon Pembe)]
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomCenter,
      );
}
