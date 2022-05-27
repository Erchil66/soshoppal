import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:soshoppal/controllers/onboarding_controller.dart';
import 'package:soshoppal/models/onboarding_model.dart';
import 'package:soshoppal/widgets/onboaring_widgets/onboarding_below.dart';
import 'package:soshoppal/widgets/onboaring_widgets/onboarding_front.dart';

class OnboardingScreenView extends StatelessWidget {
  const OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Note : you can put the controller outside the Widget build or inside or use GetView to me i usually do put
    // Controller inside the widget build since it's have fix data better to used OBX on this
    final controller = Get.put(OnboardingController());
    return Obx(
      () => Scaffold(
        backgroundColor: whiteColor,
        body: WillPopScope(
          // Note: this one prevent back button
          onWillPop: () async => false,
          child: SafeArea(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: controller.pageControll,
              onPageChanged: controller.selectedPagexNumber,
              itemCount: listonboarding.length,
              itemBuilder: (itemBuilder, index) => OnboardingWidgetHoler(
                showGetStarted:
                    index == listonboarding.indexOf(listonboarding.last)
                        ? true
                        : false,
                headTitle: listonboarding[index].headtitle,
                description: listonboarding[index].description,
                pngImage: listonboarding[index].imageattach,
                skipOrgetStarted: () => controller.gotoSigin(),
              ),
            ),
          ),
        ),
        bottomNavigationBar: OnboardingBelowCount(
          selectedIndex: controller.selectedPagexNumber.value,
        ),
      ),
    );
  }
}
