import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.controller});

  final TextEditingController? controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      hintText: "كلمة المرور",
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? Icon(Icons.visibility_off, color: Color(0xffC9CECF))
            : Icon(Icons.visibility, color: Color(0xffC9CECF)),
      ),
    );
  }
}
