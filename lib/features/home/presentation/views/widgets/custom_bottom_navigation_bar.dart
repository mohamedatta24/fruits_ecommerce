import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var value = e.value;
          return Expanded(
            flex: isSelected == index ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = index;
                });
              },
              child: NavigationBarItem(
                isSelected: isSelected == index,
                bottomNavigationBarEntity: value,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
