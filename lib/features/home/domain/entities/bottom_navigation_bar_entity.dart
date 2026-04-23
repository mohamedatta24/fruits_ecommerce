import 'package:fruits_ecommerce/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String inActiveItem, activeItem;
  final String name;

  BottomNavigationBarEntity({
    required this.inActiveItem,
    required this.activeItem,
    required this.name,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
  BottomNavigationBarEntity(
    inActiveItem: Assets.imagesHomeOutline,
    activeItem: Assets.imagesHomeSolid,
    name: "الرئيسية",
  ),
  BottomNavigationBarEntity(
    inActiveItem: Assets.imagesElementOutline,
    activeItem: Assets.imagesElementSolid,
    name: "المنتجات",
  ),

  BottomNavigationBarEntity(
    inActiveItem: Assets.imagesShoppingCartOutline,
    activeItem: Assets.imagesShoppingCartSolid,
    name: "سلة التسوق",
  ),
  BottomNavigationBarEntity(
    inActiveItem: Assets.imagesUserOutline,
    activeItem: Assets.imagesUserSolid,
    name: "حسابي",
  ),
];
