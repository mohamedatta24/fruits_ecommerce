import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "تمتلك حساب بالفعل؟",
          style: TextStyle(
            color: Color(0xff949D9E),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 4.0),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Text(
            "تسجيل دخول",
            style: TextStyle(
              color: Color(0xff1B5E37),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
