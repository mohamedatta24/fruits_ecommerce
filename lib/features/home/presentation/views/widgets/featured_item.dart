import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/widgets/featured_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(7.0),
      child: SizedBox(
        width: width - 32,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: width * 0.4,
                top: 0,
                child: SvgPicture.asset(Assets.imagesFruit2),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(Assets.imagesEllipse),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 25.0),
                      Text(
                        "عروض العيد",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "خصم 25%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      FeaturedButton(),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
