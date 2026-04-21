import 'package:flutter/cupertino.dart';

class FeaturedButton extends StatelessWidget {
  const FeaturedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 4.0),
        child: FittedBox(
          child: Text(
            "تسوق الان",
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: const Color(0xff1B5E37),
            ),
          ),
        ),
      ),
    );
  }
}
