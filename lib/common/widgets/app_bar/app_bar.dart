import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utilities/constant/color.dart';
import '../../../utilities/constant/sizes.dart';
import '../../../utilities/helpers/device_helper.dart';
class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({
    super.key,
    this.title,
    this.showBackArea= false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
  });

  final Widget? title;
  final bool showBackArea;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        /// Leading
        leading: showBackArea
            ? IconButton(
          onPressed:   Get.back,
          icon: Icon(Iconsax.arrow_left, color: UColors.white),
        ) : null,

        /// Title
        title: title,

        //// Actions
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}