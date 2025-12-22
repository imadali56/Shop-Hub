import 'package:animated_container/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utilities/constant/sizes.dart';
import '../../../../../utilities/constant/texts.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        // Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields/2),

        // RememberMe & ForgetPassword
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Remember me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(UTexts.rememberMe),
              ],
            ),
            // ForgetPassword
            TextButton(
              onPressed: () {},
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),

        SizedBox(height: USizes.spaceBtwSections),

        // SignIn
        UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),

        SizedBox(height: USizes.spaceBtwItems/2),
        // createPassword
        SizedBox(
          width: double.infinity,
            child: OutlinedButton(onPressed: () => Get.to(()=> SignUpScreen()), child: Text(UTexts.createAccount))),
        SizedBox(height: USizes.spaceBtwSections,),

      ],
    );
  }
}