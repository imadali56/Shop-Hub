import 'package:animated_container/features/shop/controllers/home/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/rouded_image.dart';
import '../../../../../utilities/constant/images.dart';
import '../../../../../utilities/constant/sizes.dart';
import 'home_banner_navigator.dart';
class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key, required this.banners,
  });
final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller= HomeController.instance;
    return Column(
      children: [
        // slider
        CarouselSlider(
          items: banners.map((banner) => URoundedImage(imageUrl: banner),).toList(),
          options: CarouselOptions(viewportFraction: 1, onPageChanged: (index, reason) => controller.onPageChanged(index),),
            carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}