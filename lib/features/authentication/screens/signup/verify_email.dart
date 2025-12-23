import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/style/padding.dart';
import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../common/widgets/screens/success_screen.dart';
import '../../../../utilities/constant/images.dart';
import '../../../../utilities/constant/sizes.dart';
import '../../../../utilities/constant/texts.dart';
import '../../../../utilities/helpers/device_helper.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
            Text(UTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwItems/2),
            // ---- Email ----
            Text('imadali.kh5656@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwItems/2),
            // ---- SubTitle ----
            Text(UTexts.verifyEmailSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
            SizedBox(height: USizes.spaceBtwSections),
            // ---- Continue ----
            UElevatedButton(onPressed: ()=> Get.to((SuccessScreen())), child: Text(UTexts.uContinue)),
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

