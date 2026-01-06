import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/common/widgets/textField/search_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_categories.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';

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
            child: CarouselSlider(
                items:
                [
            URoundedImage(image: UImages.homeBanner1),
            URoundedImage(image: UImages.homeBanner2),
            URoundedImage(image: UImages.homeBanner3),
            URoundedImage(image: UImages.homeBanner4),
            URoundedImage(image: UImages.homeBanner5),
            URoundedImage(image: UImages.homeBanner6),




                ],
                options: CarouselOptions(
                   viewportFraction: 1
                )

            ),
          )

        ],
      )
    );
  }
}

class URoundedImage extends StatelessWidget {
  const URoundedImage({
    super.key, required this.image,
  });

  final String image;
final double? width, height;
final String imageUrl;
final bool applyImageRadius;
final BoxBorder? border;
final Color? backgroundColor;
final BoxFit ? fit;
final EdgeInsetsGeometry? padding;
final bool? isNetworkImage;
final VoidCallback? onPressed;
final double borderRadius;





  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(USizes.md),
          child: Image(image: AssetImage(imageUrl))),
    );
  }
}
