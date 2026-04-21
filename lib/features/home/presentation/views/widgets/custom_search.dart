import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 9,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20.0,
            child: Center(child: SvgPicture.asset(Assets.imagesSearch))),
          suffixIcon: SizedBox(
            width: 20.0,
            child: Center(child: SvgPicture.asset(Assets.imagesFilter))),
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
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      
      borderSide: BorderSide(
        color: Color.fromARGB(255, 233, 233, 228),
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(12.0),
    );
  }
}
