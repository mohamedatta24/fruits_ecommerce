import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      trailing: CircleAvatar(
        backgroundColor: Color(0xff1B5E37).withOpacity(0.2),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),
      title: Text(
        "صباح الخير !..",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        "أحمد مصطفي",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff0C0D0D),
        ),
      ),
      leading: Image.asset(Assets.imagesUser, fit: BoxFit.fill),
    );
  }
}
