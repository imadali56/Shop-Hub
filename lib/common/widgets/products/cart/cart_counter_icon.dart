import 'package:animated_container/utilities/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Shopping bag Icon
        IconButton(onPressed: (){},
            icon: Icon(Iconsax.shopping_bag, color: UColors.white)),
        // Counter container/ counter text
        Positioned(
          right: 7,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: UColors.dark,
              shape: BoxShape.circle,
            ),
            child: Center(child: Text('2', style: TextStyle(color: UColors.white, fontSize: 12),)),
          ),
        )
      ],
    );
  }
}