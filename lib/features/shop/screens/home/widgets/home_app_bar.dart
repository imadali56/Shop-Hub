import 'package:animated_container/common/widgets/app_bar/app_bar.dart';
import 'package:animated_container/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:flutter/material.dart';
class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
     children: [
          // Title //
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),
          // Sub Title //
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),
        ],
      ),
      // bag icon //
      actions: [
        UCartCounterIcon()
      ],
    );
  }
}