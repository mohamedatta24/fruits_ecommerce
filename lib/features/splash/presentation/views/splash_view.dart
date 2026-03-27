import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: SplashViewBody()));
  }
}
