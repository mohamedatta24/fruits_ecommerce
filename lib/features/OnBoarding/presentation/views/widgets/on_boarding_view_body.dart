import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.imagesBackground1,
                  fit: BoxFit.fill,
                ),
              ),

              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Center(child: SvgPicture.asset(Assets.imagesFruit1)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  "تحط",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64.0),
        const Text(
          "FruitHUB مرحبًا بك في",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: const Text(
            textAlign: TextAlign.center,
            "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff4E5556),
              fontSize: 13.0,
            ),
          ),
        ),
      ],
    );
  }
}
