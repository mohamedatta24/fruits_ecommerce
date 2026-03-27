import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fruits_ecommerce/features/OnBoarding/data/models/on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;

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
                  onBoardingModel.background,
                  fit: BoxFit.fill,
                ),
              ),

              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Center(child: SvgPicture.asset(onBoardingModel.image)),
              ),
              Visibility(
                visible: onBoardingModel.visible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "تحط",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64.0),
        onBoardingModel.title,
        const SizedBox(height: 24.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            textAlign: TextAlign.center,
            onBoardingModel.subTitle,
            style: const TextStyle(
              height: 2,
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
