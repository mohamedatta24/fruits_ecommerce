import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Color(0xffDDDFDF)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          visualDensity: VisualDensity.comfortable,
          minVerticalPadding: 0.0,
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(image),
          title: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xff0C0D0D),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
