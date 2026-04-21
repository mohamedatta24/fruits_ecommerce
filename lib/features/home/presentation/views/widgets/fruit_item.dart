import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.heart),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Image.asset(Assets.imagesWatermelon),
                const ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية ',
                          style: TextStyle(
                            color: Color(0xFFF4A91F) /* Orange-500 */,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyle(
                            color: Color(0xFFF8C76D) /* Orange-300 */,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' الكيلو',
                          style: TextStyle(
                            color: Color(0xFFF8C76D) /* Orange-300 */,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            height: 1.70,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0xff1B5E37),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
