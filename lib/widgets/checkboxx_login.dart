part of 'package:ai_coach/screens/login_screen.dart';

class _CheckBoxLogin extends StatelessWidget {
  const _CheckBoxLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {},
            activeColor: Colors.green,
          ),
          Text(
            CustomKeys.rememberMe,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
