import 'package:animated_container/common/widgets/screens/success_screen.dart';
import 'package:animated_container/features/authentication/screens/login/login.dart';
import 'package:animated_container/features/authentication/screens/signup/signup.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark= UHelperFunction.isDarkMode(context);
    return Scaffold(
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () =>
            NavigationBar(
              elevation: 0,
              backgroundColor: dark? UColors.dark: UColors.light,
              indicatorColor: dark? UColors.light.withValues(alpha: 0.1): UColors.dark.withValues(alpha: 0.1),
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) {
                controller.selectedIndex.value = index;
              },
              destinations: [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: 'Wishlist'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile'),
              ],
            ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = [
    Container(color: Colors.amber),
    Container(color: Colors.purple),
    Container(color: Colors.blue),
    Container(color: Colors.grey),
  ];
}
