import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utilities/helpers/device_helper.dart';


// Dot Navigation
class OnBoardingDotNavigation extends StatelessWidget {
   OnBoardingDotNavigation({
    super.key,
  });
final controller= OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4.7,
      left: UDeviceHelper.getScreenWidth(context) / 3,
      right: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(controller: controller.pagecontroller,
          onDotClicked: controller.dotNavigationClick,count: 3
          , effect:ExpandingDotsEffect(
              dotHeight: 6
          )
      ) ,
    );
  }
}