import 'package:flutter/material.dart';
import 'package:ai_coach/screens/login_screen.dart';

mixin ControllerMixin on State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
