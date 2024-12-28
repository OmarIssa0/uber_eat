import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: AppColor.kPrimaryColor800,
        size: 25,
      ),
      label: Text(
        text,
        style: AppStyles.medium16.copyWith(color: AppColor.kCoolGrey600),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: AppColor.kCoolGrey600,
        backgroundColor: AppColor.kWhite,
        minimumSize: Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
