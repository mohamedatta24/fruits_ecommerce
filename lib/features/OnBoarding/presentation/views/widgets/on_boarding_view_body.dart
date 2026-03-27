import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';

import 'package:fruits_ecommerce/features/OnBoarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(controller: pageController,)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: Color(0xff1B5E37),
            color: currentIndex == 1
                ? const Color(0xff1B5E37)
                : const Color(0xff1B5E37).withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 32.0),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentIndex == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const CustomButton(),
          ),
        ),
        const SizedBox(height: 50.0),
      ],
    );
  }
}
