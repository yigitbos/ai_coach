part of 'package:ai_coach/screens/login_screen.dart';

class _ForgotPasswordText extends StatelessWidget {
  const _ForgotPasswordText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppPadings.high.value),
      child: RichText(
        text: TextSpan(
          text: CustomKeys.forgotPassword,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
          ),
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
      ),
    );
  }
}
