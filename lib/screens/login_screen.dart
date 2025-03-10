import 'package:flutter/material.dart';
import 'package:ai_coach/utils/app_padings.dart';
import 'package:ai_coach/widgets/gradient_background.dart';
import 'package:ai_coach/widgets/mixins/controller_mixin.dart';

part 'package:ai_coach/widgets/textfields_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final String _memberLogin = 'Member Login';

class _LoginScreenState extends State<LoginScreen> with ControllerMixin {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: AppPadings.veryHigh.value),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppPadings.veryHigh.value),
                  child: LoginCircleIcon(),
                ),
                Text(
                  _memberLogin,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge!.copyWith(color: Colors.white),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: AppPadings.veryHigh.value,
                    left: AppPadings.high.value,
                    right: AppPadings.high.value,
                  ),
                  child: TextfieldsLogin(
                    hintText: 'Email',
                    controller: emailController,
                    iconData: Icons.person,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
