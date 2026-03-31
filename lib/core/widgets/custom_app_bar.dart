import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back_ios, color: Color(0xff0C0D0D)),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: Color(0xff0C0D0D),
        fontSize: 19.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
