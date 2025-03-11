part of 'package:ai_coach/screens/login_screen.dart';

class _NotMember extends StatelessWidget {
  const _NotMember();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppPadings.veryVeryHigh.value),
      child: Text(
        CustomKeys.notMember,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
