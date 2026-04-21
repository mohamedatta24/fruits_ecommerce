import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/fruit_item.dart';

class FruitItemGridView extends StatelessWidget {
  const FruitItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 200 / 214,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
