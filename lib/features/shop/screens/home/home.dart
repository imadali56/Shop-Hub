import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/common/widgets/textField/search_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:animated_container/features/shop/screens/home/widgets/home_categories.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}


