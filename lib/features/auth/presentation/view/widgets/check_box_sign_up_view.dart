import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_color.dart';

class CheckBoxSignUpView extends StatefulWidget {
  const CheckBoxSignUpView({
    super.key,
  });

  @override
  State<CheckBoxSignUpView> createState() => _CheckBoxSignUpViewState();
}

class _CheckBoxSignUpViewState extends State<CheckBoxSignUpView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            activeColor: AppColor.kPrimaryColor900,
            side: BorderSide(color: AppColor.kSecondaryColor200),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text.rich(
            TextSpan(
              text: "when you click on sign up, you agree to our",
              style: TextStyle(
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: " Terms of Service",
                  style: TextStyle(
                    color: AppColor.kPrimaryColor900,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: " and",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: " Privacy Policy.",
                  style: TextStyle(
                    color: AppColor.kPrimaryColor900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
