import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/custom_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: const [
          SizedBox(height: 16.0),
          CustomHomeAppBar(),
          SizedBox(height: 16.0),
          CustomSearch(),
        ],
      ),
    );
  }
}
