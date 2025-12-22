import 'package:animated_container/common/style/padding.dart';
import 'package:animated_container/features/authentication/screens/login/login.dart';
import 'package:animated_container/utilities/constant/images.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/button/elevated_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(children: [
            // ---- Image ----
            Image.asset(UImages.mailSendImage, height: UDeviceHelper.getScreenHeight(context)*0.3),
            SizedBox(height: USizes.spaceBtwItems),
            // ---- Title ----
            Text(UTexts.resetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwItems/2),
            // ---- Email ----
Text('imadali.kh5656@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwItems/2),
            // ---- SubTitle ----
            Text(UTexts.resetPasswordSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
            SizedBox(height: USizes.spaceBtwSections),
            // ---- Done ----
            UElevatedButton(onPressed: (){}, child: Text(UTexts.done)),
            // ---- ResetEmail ----
            SizedBox(
                width: UDeviceHelper.getScreenWidth(context),
                child: TextButton(onPressed: (){}, child: Text(UTexts.resendEmail)))
          ]),
        ),
      ),
    );
  }
}
