import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/signup_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignupView();
                },
              ),
            );
          },
          child: const Text(
            "قم بإنشاء حساب",
            style: TextStyle(
              color: Color(0xff2D9F7F),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(width: 4.0),
        const Text(
          "لا تمتلك حساب؟",
          style: TextStyle(
            color: Color(0xff949D9E),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
