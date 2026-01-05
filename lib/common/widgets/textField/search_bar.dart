import 'package:animated_container/common/style/shadow.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark= UHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: 5,
      left: 20,
      right: USizes.spaceBtwSections,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        height: USizes.searchBarHeight,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
            color: dark ?UColors.dark:  UColors.light,
            boxShadow: UShadow.searchBarShadow),
        child: Row(
          children: [
            // Search Icon
            Icon(Iconsax.search_normal, color: UColors.darkGrey,),
            SizedBox(width:  USizes.spaceBtwItems),
            Text(UTexts.searchBarTitle, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}