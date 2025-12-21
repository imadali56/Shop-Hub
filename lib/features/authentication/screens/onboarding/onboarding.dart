import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:animated_container/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              controller:controller.pageController ,// issue
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  animation: UImages.onboarding1,
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding2,
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
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
