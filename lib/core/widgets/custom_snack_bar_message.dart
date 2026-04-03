import 'package:flutter/material.dart';

void buildSnackBarMessage(
  BuildContext context,
  String message, {
  Color backgroundColor = const Color(0xffE74C3C),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      content: Text(
        textAlign: TextAlign.center,
        message,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}
