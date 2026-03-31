import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
          color: const Color(0xff1B5E37),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
