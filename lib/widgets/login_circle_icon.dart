part of 'package:ai_coach/screens/login_screen.dart';

class LoginCircleIcon extends StatelessWidget {
  const LoginCircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
      child: Center(child: Icon(Icons.person, size: 150, color: Colors.white)),
    );
  }
}
