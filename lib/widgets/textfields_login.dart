part of 'package:ai_coach/screens/login_screen.dart';

final class TextfieldsLogin extends StatelessWidget {
  const TextfieldsLogin({
    required String hintText,
    required TextEditingController controller,
    required IconData iconData,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.emailAddress,
  }) : _hintText = hintText,
       _controller = controller,
       _obscureText = obscureText,
       _iconData = iconData,
       _keyboardType = keyboardType;

  final String _hintText;
  final TextEditingController _controller;
  final bool _obscureText;
  final IconData _iconData;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 4),
        color: const Color.fromARGB(255, 109, 39, 184),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(_iconData, color: Colors.white, size: 30),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              obscureText: _obscureText,
              keyboardType: _keyboardType,
              controller: _controller,
              decoration: InputDecoration(
                hintText: _hintText,
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
