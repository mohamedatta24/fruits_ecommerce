import 'package:flutter/cupertino.dart';

class FruitItemHeader extends StatelessWidget {
  const FruitItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "الأكثر مبيعًا",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xff000000),
          ),
        ),
        Spacer(),
        Text(
          "المزيد",
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: const Color(0xff616A6B),
          ),
        ),
      ],
    );
  }
}
