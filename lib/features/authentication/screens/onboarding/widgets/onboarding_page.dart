import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utilities/constant/images.dart';
import '../../../../../utilities/constant/sizes.dart';
import '../../../../../utilities/constant/texts.dart';
import '../../../../../utilities/helpers/device_helper.dart';
class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key, required this.animation, required this.title, required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(

        top: UDeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          // Animaiton
          Lottie.asset(animation),
// title
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          // sub Title
          Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}