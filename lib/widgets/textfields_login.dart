part of 'package:ai_coach/screens/login_screen.dart';

final class _TextfieldsLogin extends StatelessWidget {
  const _TextfieldsLogin({
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
    return Padding(
      padding: EdgeInsets.only(
        top: AppPadings.high.value,
        left: AppPadings.high.value,
        right: AppPadings.high.value,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 4),
          color: Colors.transparent,
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
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
