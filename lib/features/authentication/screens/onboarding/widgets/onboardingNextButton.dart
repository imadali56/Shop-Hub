import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utilities/constant/sizes.dart';
// Bottom Button
class OnBoardingNextButton extends StatelessWidget {
   OnBoardingNextButton({
    super.key,
  });
final controller= OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems/2,

      child: UElevatedButton(
        child: Text('Next',),
        onPressed: controller.nextPage,
      ),
    );
  }
}