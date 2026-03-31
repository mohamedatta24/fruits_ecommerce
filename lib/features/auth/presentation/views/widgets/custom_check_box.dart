import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isCheck,
    required this.onChanged,
  });

  final bool isCheck;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isCheck);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          color: isCheck ? const Color(0xff1B5E37) : Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: isCheck ? const Color(0xff1B5E37) : const Color(0xffCCCCCC),
          ),
        ),
        child: isCheck
            ? Center(child: SvgPicture.asset(Assets.imagesCheck))
            : null,
      ),
    );
  }
}
