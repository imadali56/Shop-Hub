import 'package:animated_container/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utilities/helpers/device_helper.dart';

class OnBoardingSkipButton extends StatelessWidget {
  OnBoardingSkipButton({super.key});
  final controller = OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=>controller.currentIndex.value==2 ? SizedBox(): Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(
          onPressed: controller.skipPage,
          child: Text(
            'skip',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
