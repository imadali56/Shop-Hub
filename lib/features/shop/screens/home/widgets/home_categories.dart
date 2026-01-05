import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:flutter/material.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // sections Heading
        Text(
          UTexts.popularCategories,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: UColors.white),
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        // Categories List

        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {

              return Column(
                children: [
                  // Image container
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: UColors.white,
                    ),
                  ),
                  // Text
                  SizedBox(
                    width: 55,
                    child: Text(
                      'Sports Categories',
                      style: Theme.of(context).textTheme.labelMedium!
                          .apply(color: UColors.white),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}