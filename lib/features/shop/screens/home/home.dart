import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/common/widgets/textField/search_bar.dart';
import 'package:animated_container/features/shop/controllers/home/home_controller.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_categories.dart';
import 'package:animated_container/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(HomeController());
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
            child: UPromoSlider(
              banners: [
                UImages.homeBanner1,
                UImages.homeBanner2,
                UImages.homeBanner3,
                UImages.homeBanner4,
                UImages.homeBanner5,
                UImages.homeBanner6
              ],
            ),
          ),
        ],
      ),
    );
  }
}
