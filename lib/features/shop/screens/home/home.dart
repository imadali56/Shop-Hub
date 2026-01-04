import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/app_bar/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      body: PrimaryHeaderContainer(
        child: Column(
          children: [
            UAppBar(
              // title
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ---- Title --- //
                  Text(
                    UTexts.homeAppBarTitle,
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium!.apply(color: UColors.grey),
                  ),

                  // ---- Sub-Title --- //
                  Text(
                    UTexts.homeAppBarSubTitle,
                    style: Theme.of(
                      context,
                    ).textTheme.headlineSmall!.apply(color: UColors.white),
                  ),
                ],
              ),

              // actions
              actions: [
                Stack(
                  children: [
                    //// Bag Icon or cart icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.shopping_bag,
                        color: dark ? UColors.white : UColors.white,
                      ),
                    ),
            /// counter TExt
                    Positioned(
                      right: 7,
                      child: Container(

                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(fontSizeFactor: 0.8 , color: dark? UColors.black: UColors.black),)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
