import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // Image container
          Container(
            height: 56,
            width: 56,
            padding: EdgeInsets.all(USizes.sm),
            child: Image.asset(image, fit: BoxFit.cover),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: backgroundColor ?? (dark ? UColors.dark : UColors.light),
            ),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
          // Text
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
