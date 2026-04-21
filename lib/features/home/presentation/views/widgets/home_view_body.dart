import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/custom_search.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/featured_item.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/featured_item_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: const [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16.0),
                CustomHomeAppBar(),
                SizedBox(height: 16.0),
                CustomSearch(),
                SizedBox(height: 12.0),
              ],
            ),
          ),
          SliverToBoxAdapter(child: FeaturedItemListView()),
        ],
      ),
    );
  }
}
