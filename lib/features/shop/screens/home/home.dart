import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/common/widgets/images/rouded_image.dart';
import 'package:animated_container/common/widgets/textField/search_bar.dart';
import 'package:animated_container/features/shop/screens/home/home.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_categories.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Upper part
          Stack(
            children: [
              SizedBox(
                // Total height+ 20
                height: USizes.homePrimaryHeaderHeight + 10,
              ),
              // primary header container
              PrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //--- AppBar ---//
                    UHomeAppBar(),
                    SizedBox(height: USizes.spaceBtwSections),

                    // Popular Categories
                    UHomeCategories(),
                  ],
                ),
              ),

              // search Bar
              USearchBar(),
            ],
          ),
          SizedBox(height: USizes.defaultSpace),
          // lower part
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: Column(
              children: [
                // slider
                CarouselSlider(
                  items: [
                    URoundedImage(imageUrl: UImages.homeBanner1),
                    URoundedImage(imageUrl: UImages.homeBanner2),
                    URoundedImage(imageUrl: UImages.homeBanner3),
                    URoundedImage(imageUrl: UImages.homeBanner4),
                    URoundedImage(imageUrl: UImages.homeBanner5),
                    URoundedImage(imageUrl: UImages.homeBanner6),
                  ],
                  options: CarouselOptions(viewportFraction: 1),
                ),
                SizedBox(height: USizes.spaceBtwItems),
                BannersDotNavigation(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Banners Navigation
class BannersDotNavigation extends StatelessWidget {
  const BannersDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(

      count: 3,
      effect: ExpandingDotsEffect(dotHeight: 6),
      controller:PageController(),
    );
  }
}
