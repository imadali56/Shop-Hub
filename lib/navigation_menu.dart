import 'package:animated_container/utilities/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          elevation: 0,
          backgroundColor: UColors.light,
          indicatorColor: UColors.black.withValues(alpha: 0.1),
          destinations: [
        NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
        NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
        NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
        NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
      ])
    );
  }
}
