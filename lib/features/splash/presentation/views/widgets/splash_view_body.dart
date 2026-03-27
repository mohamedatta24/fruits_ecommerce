import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/services/shared_prefs.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/features/OnBoarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/login_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    toNavigation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [SvgPicture.asset(Assets.imagesPlant)]),
        Center(child: SvgPicture.asset(Assets.imagesLogo)),
        SvgPicture.asset(Assets.imagesCircles, fit: BoxFit.fill),
      ],
    );
  }

  void toNavigation(context) {
    bool isOnBoardingViewSeen = SharedPrefs.getBool(kIsOnBoardingViewSeen);

    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isOnBoardingViewSeen) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginView();
            },
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OnBoardingView();
            },
          ),
        );
      }
    });
  }
}
