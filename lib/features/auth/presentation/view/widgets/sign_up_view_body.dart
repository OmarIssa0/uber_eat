import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/custom_button.dart';
import 'package:uber_eat/core/widgets/custom_text_filed.dart';
import 'package:uber_eat/features/auth/presentation/view/widgets/check_box_sign_up_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFiled(
                title: "Full Name", textInputType: TextInputType.text),
            SizedBox(height: 16),
            CustomTextFiled(
                title: "Email", textInputType: TextInputType.emailAddress),
            SizedBox(height: 16),
            CustomTextFiled(
              title: "Password",
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              suffixIcon: Icon(
                IconlyBold.show,
                color: Color(0xffC9CECF),
                size: 25,
              ),
            ),
            SizedBox(height: 16),
            CheckBoxSignUpView(),
            SizedBox(height: 33),
            CustomButton(
              onPressed: () {},
              text: "Sign Up",
            ),
            SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: AppColor.kSecondaryColor400,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: AppColor.kPrimaryColor900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
