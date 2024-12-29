import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber_eat/core/utils/app_color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.title,
    required this.textInputType,
    this.controller,
    this.prefix,
    this.validator,
    this.focusNode,
    this.onFieldSubmitted,
    this.textInputAction,
    this.obscureText = false,
    this.onTap,
    this.readOnly = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.prefixText,
    this.contentPadding,
    this.onChanged,
    this.suffixIcon,
    this.fillColor,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String title;
  final Widget? prefix;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final void Function()? onTap;
  final bool readOnly;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final String? prefixText;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLengthEnforcement: maxLengthEnforcement,
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      // cursorColor: AppColor.kIconColor,
      controller: controller,
      keyboardType: textInputType,
      focusNode: focusNode,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: contentPadding,
        prefixText: prefixText,
        // prefixStyle: const TextStyle(color: AppColor.kIconColor, fontSize: 14),
        // labelText: labelText,
        filled: true,
        fillColor: fillColor ?? AppColor.kCoolGrey50.withOpacity(.5),
        prefixIcon: prefix,
        hintText: title,
        labelStyle: const TextStyle(color: AppColor.kBlue200),
        hintFadeDuration: Durations.short2,
        hintStyle: const TextStyle(
          color: AppColor.kCoolGrey400,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedErrorBorder: buildBorder(),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: AppColor.kCoolGrey600.withOpacity(.2))),
      ),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      readOnly: readOnly,
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: AppColor.kCoolGrey600.withOpacity(.2),
    ),
  );
}
