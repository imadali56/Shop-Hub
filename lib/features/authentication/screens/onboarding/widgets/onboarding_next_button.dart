import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utilities/constant/sizes.dart';
// Bottom Button
class OnBoardingNextButton extends StatelessWidget {
   OnBoardingNextButton({
    super.key,
  });
final controller= OnBoardingController.instance;// issue
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems/2,

      child: UElevatedButton(
        child: Obx(()=> Text(controller.currentIndex.value==2? 'Get Started'  : 'Next')),
        onPressed: controller.nextPage,
      ),
    );
  }
}