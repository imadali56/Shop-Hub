import 'package:animated_container/common/style/padding.dart';
import 'package:animated_container/common/widgets/button/social_buttons.dart';
import 'package:animated_container/common/widgets/login_signup/form_divider.dart';
import 'package:animated_container/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/constant/texts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----- Header ----- //
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),

              // ----- Form ----- //
              SignUpForm(),
              SizedBox(height: USizes.spaceBtwSections),
              // ----- Divider ----- //

              ULoginDivider(title: UTexts.orSignupWith),
              SizedBox(height: USizes.spaceBtwSections),
              // ----- Footer ----- //
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


