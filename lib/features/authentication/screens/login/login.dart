import 'package:animated_container/features/authentication/screens/login/widgets/login_form.dart';
import 'package:animated_container/features/authentication/screens/login/widgets/login_header.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/button/social_buttons.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark= UHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              ULoginHeader(),
        
              SizedBox(height: USizes.spaceBtwSections),
              // Form
              ULoginForm(),
        
              // Divider
              ULoginDivider(title: UTexts.orSignInWith),
        
             // ULoginDivider(dark: dark),
        
              SizedBox(height: USizes.spaceBtwSections),
              // Social Buttons
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








