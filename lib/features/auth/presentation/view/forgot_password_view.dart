import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/features/auth/presentation/view/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  static const String routeName = '/forgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: AppStyles.bold22,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const ForgotPasswordViewBody(),
    );
  }
}
