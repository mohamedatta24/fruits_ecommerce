import 'package:flutter/material.dart';

class ForgotYourPassword extends StatelessWidget {
  const ForgotYourPassword({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "نسيت كلمة المرور؟",
        style: TextStyle(
          color: Color(0xff2D9F7F),
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
