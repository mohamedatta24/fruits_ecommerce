import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedItemListView extends StatelessWidget {
  const FeaturedItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(3, (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedItem(),
          );
        }),
      ),
    );
  
  }
}
