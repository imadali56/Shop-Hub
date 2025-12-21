import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constant/color.dart';
import '../../../utilities/constant/texts.dart';

class ULoginDivider extends StatelessWidget {
  const ULoginDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark= UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Expanded(child: Divider(indent: 30, endIndent: 5, color: dark? UColors.darkGrey : UColors.grey,)),
        Text(UTexts.orSignInWith, style: Theme.of(context).textTheme.labelMedium,),
        Expanded(child: Divider(indent: 5, endIndent: 30, color: dark? UColors.darkGrey : UColors.grey,)),
      ],
    );
  }
}