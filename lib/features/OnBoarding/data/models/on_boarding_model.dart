import 'package:flutter/material.dart';

class OnBoardingModel {
  final String background;
  final String image;
  final Widget title;
  final String subTitle;
  final bool visible;

  const OnBoardingModel({
    required this.background,
    required this.image,
    required this.title,
    required this.subTitle, required this.visible,
  });
}
