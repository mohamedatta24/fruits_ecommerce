import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(CupertinoIcons.search),
        suffixIcon: Icon(CupertinoIcons.alarm),
        hintText: "ابحث عن.......",
        hintStyle: TextStyle(
          color: Color(0xff616A6B),
          fontSize: 13.0,
          fontWeight: FontWeight.w400,
        ),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      gapPadding: 16.0,
      borderSide: BorderSide(
        color: Color.fromARGB(255, 233, 233, 228),
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(12.0),
    );
  }
}
