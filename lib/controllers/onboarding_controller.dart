import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soshoppal/constants/my_storage.dart';
import 'package:soshoppal/models/onboarding_model.dart';
import 'package:soshoppal/routes/route_name.dart';
// uncomment this if you uncomment the Get.offNamedUntil(signIn, (route) => false);
// import 'package:soshoppal/routes/route_name.dart';

class OnboardingController extends GetxController {
  // # out count on pages
  final selectedPagexNumber = 0.obs;
  // # Create a variable for showing in last page button
  final showGetStart = false.obs;
  // # Get the last count of the page
  bool get isLastPage => selectedPagexNumber.value == listonboarding.length - 1;
  // # Page controller for the PageView
  final pageControll = PageController();

  // # Page controller function
  // If you prefer to click2 to next page
  // Also change the physics to neverscrollablephysics
  // action() {
  //   if (isLastPage) {
  //     // Do Nothing on this part
  //     // Questioning why? Since the plan on this if you wanted to go back to read
  //     // But if you wanted to direct goto the next page then uncomment bellow
  //     // Get.offNamedUntil(signIn, (route) => false);
  //     return showGetStart(true);
  //   } else {
  //     pageControll.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
  //     return showGetStart(false);
  //   }
  // }

  // # function for both skip and getstarted button
  gotoSigin() {
    MyStorage.setidentifier(key: onboardingShowOnce, value: "alreadyShown");
    Get.offNamedUntil(signIn, (route) => false);
  }
}
