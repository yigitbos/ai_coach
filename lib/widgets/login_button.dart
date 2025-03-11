part of 'package:ai_coach/screens/login_screen.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppPadings.high.value),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.07,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: Colors.white, width: 2),
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            CustomKeys.login,
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


// const Color.fromARGB(255, 109, 54, 172),