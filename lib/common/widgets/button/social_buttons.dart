import 'package:flutter/material.dart';

import '../../../utilities/constant/color.dart';
import '../../../utilities/constant/images.dart';
import '../../../utilities/constant/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // google button
        buildButton(UImages.googleIcon,(){}),

        SizedBox(width: USizes.spaceBtwItems,),

        // facebook button
        buildButton(UImages.facebookIcon,(){}),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
        decoration:BoxDecoration(
          border: Border.all(color: UColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(onPressed: (){}, icon: Image.asset(image, height: USizes.iconMd,width: USizes.iconMd,)),

      );
  }
}