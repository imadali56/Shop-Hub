import 'package:animated_container/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/constant/sizes.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimaryHeaderContainer(
          child: Column(
            children: [
              UAppBar(),
            ],
          )
      ),
    );
  }
}

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar(
      {super.key, this.title, required this.showBackArea, this.leadingIcon, required this.leadingPressed});

  final Widget? title;
  final bool showBackArea;
  final IconData? leadingIcon;
  final List<Widget> actions;
  final VoidCallback leadingPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        /// Leading
        leading: showBackArea ? IconButton(
            onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left)):null,

        /// Title
        title:title,

        //// Actions
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}

