import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: const Color(0xff1B5E37),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: const Text(
          "ابدأ الان",
          style: TextStyle(
            fontSize: 16.0,
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
