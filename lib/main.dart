import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/OnBoarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsEcommerce());
}

class FruitsEcommerce extends StatelessWidget {
  const FruitsEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
    );
  }
}
