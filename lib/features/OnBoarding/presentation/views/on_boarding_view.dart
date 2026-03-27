import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/OnBoarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: OnBoardingViewBody()));
  }
}
