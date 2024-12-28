import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/features/auth/presentation/view/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Sign Up',
          style: AppStyles.bold22,
        ),
        centerTitle: true,
      ),
      body: SignUpViewBody(),
    );
  }
}
