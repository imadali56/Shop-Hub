import 'package:animated_container/common/style/padding.dart';
import 'package:animated_container/common/widgets/button/elevated_button.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        padding: UPadding.screenPadding,
        child: Column(
          children: [
            
            // ---- Image ---- //
            Image.asset(
              UImages.accountCreatedImage,
              height: UDeviceHelper.getScreenWidth(context) * 0.8,
            ),
            // ---- Title ---- //
            Text(
              UTexts.accountCreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwSections),
            // ---- Sub Title ---- //
            Text(
              UTexts.accountCreatedSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: USizes.spaceBtwSections),
            // ---- Continue ---- //
            UElevatedButton(onPressed: (){}, child: Text(UTexts.uContinue))
          ],
        ),
      ),
    );
  }
}
