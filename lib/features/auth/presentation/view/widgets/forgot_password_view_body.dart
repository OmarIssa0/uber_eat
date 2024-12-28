import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/custom_button.dart';
import 'package:uber_eat/core/widgets/custom_text_filed.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Don't worry, just enter your phone number and we will send you the verification code.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 31),
            CustomTextFiled(
                title: "Email", textInputType: TextInputType.emailAddress),
            const SizedBox(height: 30),
            CustomButton(text: "Send"),
          ],
        ),
      ),
    );
  }
}
