
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers/home/home_controller.dart';
// Banners Navigation
class BannersDotNavigation extends StatelessWidget {

const BannersDotNavigation({super.key});

@override
Widget build(BuildContext context) {
  final controller= HomeController.instance;

  return Obx(
    ()=> SmoothPageIndicator(
    count: 6,
    effect: ExpandingDotsEffect(dotHeight: 6),
    controller:PageController(initialPage: controller.currentIndex.value),
    ),
  );
}
}