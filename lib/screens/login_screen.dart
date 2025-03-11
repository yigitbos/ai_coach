import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ai_coach/utils/app_padings.dart';
import 'package:ai_coach/widgets/gradient_background.dart';
import 'package:ai_coach/widgets/mixins/controller_mixin.dart';
import 'package:ai_coach/utils/keys.dart';

part 'package:ai_coach/widgets/textfields_login.dart';
part 'package:ai_coach/widgets/checkboxx_login.dart';
part 'package:ai_coach/widgets/forgotpass_text_login.dart';
part 'package:ai_coach/widgets/login_circle_icon.dart';
part 'package:ai_coach/widgets/login_button.dart';
part 'package:ai_coach/widgets/not_member.dart';
part 'package:ai_coach/widgets/create_account_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

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
                Padding(
                  padding: EdgeInsets.only(top: AppPadings.medium.value),
                  child: Text(
                    CustomKeys.memberLogin,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _TextfieldsLogin(
                  hintText: CustomKeys.email,
                  controller: emailController,
                  iconData: Icons.person,
                  keyboardType: TextInputType.emailAddress,
                ),
                _TextfieldsLogin(
                  hintText: CustomKeys.password,
                  controller: passwordController,
                  iconData: Icons.lock,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: AppPadings.high.value,
                    left: AppPadings.high.value,
                    right: AppPadings.high.value,
                  ),
                  child: Row(
                    children: [_CheckBoxLogin(), _ForgotPasswordText()],
                  ),
                ),
                _LoginButton(),
                _NotMember(),
                _CreateAccountButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
