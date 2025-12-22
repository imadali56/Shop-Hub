import 'package:animated_container/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utilities/constant/color.dart';
import '../../../../../utilities/constant/sizes.dart';
import '../../../../../utilities/constant/texts.dart';

class signup_form extends StatelessWidget {
  const signup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First name & Last name
        Row(
          children: [
            //// First Name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),

            SizedBox(width: USizes.spaceBtwInputFields),

            /// Last Name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //// Email
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //// Phone Number
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        ///// Password
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),

        SizedBox(height: USizes.spaceBtwInputFields/2),
        // Privacy Policy CheckBox
        UPrivacyPolicyCheckbox(),
        SizedBox(height: USizes.spaceBtwItems),
        // Create Account Elevated Button

        UElevatedButton(onPressed: (){}, child: Text(UTexts.createAccount)),
      ],
    );
  }
}

