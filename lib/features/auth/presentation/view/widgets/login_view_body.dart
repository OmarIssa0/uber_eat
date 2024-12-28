import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/core/utils/custom_button.dart';
import 'package:uber_eat/core/utils/custom_button_with_icon.dart';
import 'package:uber_eat/core/widgets/custom_text_filed.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: AppColor.kPrimaryColor900,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 33),
            CustomButton(
              text: "Login",
            ),
            SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: AppColor.kSecondaryColor400,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: AppColor.kPrimaryColor900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColor.kSecondaryColor100,
                    thickness: 1,
                    endIndent: 8,
                  ),
                ),
                Text(
                  "Or",
                  style: TextStyle(
                    color: AppColor.kSecondaryColor400,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColor.kSecondaryColor100,
                    thickness: 1,
                    indent: 8,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomButtonWithIcon(
              text: "Continue with Google",
              icon: FontAwesomeIcons.google,
            ),
            SizedBox(height: 16),
            CustomButtonWithIcon(
              text: "Continue with Facebook",
              icon: FontAwesomeIcons.facebook,
            ),
            SizedBox(height: 16),
            CustomButtonWithIcon(
              text: "Continue with Apple",
              icon: FontAwesomeIcons.apple,
            ),
            SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
