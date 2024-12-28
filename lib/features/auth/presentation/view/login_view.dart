import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/features/auth/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: AppStyles.bold22,
        ),
        centerTitle: true,
      ),
      body: LoginViewBody(),
    );
  }
}
