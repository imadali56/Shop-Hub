import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
final pagecontroller=PageController();
RxInt currentIndex= 0.obs;

/// update current index when page scroll
void updatePageIndicator(index){
  currentIndex.value=index;
}

  // jump to specific dot selected page
void dotNavigationClick (index){
  currentIndex.value=index;
  pagecontroller.jumpToPage(index);
}

  // update current index and jump to the next page
void nextPage(){
  currentIndex.value++;
}

  // upgate current index and jump to the last page
void skipPage(){
  pagecontroller.jumpToPage(currentIndex.value);
}

}