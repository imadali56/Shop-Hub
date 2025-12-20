import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboardingNextButton.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_dotNavigation.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/widgets/button/elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            // scrolling page
            PageView(
              controller:controller.pagecontroller ,
              onPageChanged: controller.updatePageIndicator,
              children: [
                onBoardingPage(
                  animation: UImages.onboarding1,
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                onBoardingPage(
                  animation: UImages.onboarding2,
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                onBoardingPage(
                  animation: UImages.onboarding3,
                  title: UTexts.onBoardingTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),
            // Indicator
            OnBoardingDotNavigation(),
            // Button container button
            OnBoardingNextButton(),
            // skip button
            OnBoardingSkipButton()
          ],
        ),
      ),
    );
  }
}
