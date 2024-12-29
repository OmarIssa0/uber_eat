import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    required this.icon,
    required this.text,
    this.minimumSize,
    this.colorIcon,
    this.colorText,
    this.colorBackGround,
  });

  final IconData icon;
  final String text;
  final Size? minimumSize;
  final Color? colorIcon;
  final Color? colorText;
  final Color? colorBackGround;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: colorIcon ?? AppColor.kPrimaryColor800,
        size: 25,
      ),
      label: Text(
        text,
        style: AppStyles.medium16
            .copyWith(color: colorText ?? AppColor.kCoolGrey600),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: AppColor.kCoolGrey600,
        backgroundColor: colorBackGround ?? AppColor.kWhite,
        minimumSize: minimumSize ?? Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
