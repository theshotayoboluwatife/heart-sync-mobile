import 'package:flutter/material.dart';
import 'colors.dart';
import 'style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: textStyle14,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle14.copyWith(color: black.withOpacity(.4)),
        prefixIcon: prefixIcon,
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