import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.controller,
    this.obscureText = false,
  });

  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null;
      },
      cursorColor: const Color(0xff949D9E),
      style: const TextStyle(
        color: Color(0xff949D9E),
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF9FAFA),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff949D9E)),
        suffixIcon: suffixIcon,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
      borderSide: BorderSide(color: Color(0xffE6E9EA)),
    );
  }
}
