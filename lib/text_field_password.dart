import 'package:flutter/material.dart';
import 'colors.dart';
import 'style.dart';

class CustomTextFieldPassword extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obsecure;
  final String? Function(String?)? validator;

  const CustomTextFieldPassword({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecure,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      validator: validator,
      style: textStyle14,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle14.copyWith(color: black.withOpacity(.4)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fieldColor,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder.copyWith(
          borderSide: BorderSide(color: primary),
        ),
      ),
    );
  }
}