import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/features/OnBoarding/data/models/on_boarding_model.dart';
import 'package:fruits_ecommerce/features/OnBoarding/presentation/views/widgets/on_boarding_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.controller});
  final PageController controller;

  final List<OnBoardingModel> items = const [
    OnBoardingModel(
      visible: true,
      background: Assets.imagesBackground1,
      image: Assets.imagesFruit1,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Fruit",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff1B5E37),
            ),
          ),
          Text(
            "HUB",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Color(0xffF4A91F),
            ),
          ),
          Text(
            "مرحبًا بك في",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
      subTitle:
          "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
    ),
    OnBoardingModel(
      visible: false,
      background: Assets.imagesBackground2,
      image: Assets.imagesFruit2,
      title: Text(
        "ابحث وتسوق",
        style: TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff000000),
        ),
      ),
      subTitle:
          "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OnBoardingItem(onBoardingModel: items[index]);
      },
    );
  }
}
