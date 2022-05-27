import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:soshoppal/models/onboarding_model.dart';

class OnboardingBelowCount extends StatelessWidget {
  final int? selectedIndex;

  const OnboardingBelowCount({super.key, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 1.h,
        // width: 50.w,
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: listonboarding.length,
            itemBuilder: (context, index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.only(right: 5),
              height: 0.5.h,
              width: selectedIndex == index ? 10.4.w : 2.w,
              decoration: BoxDecoration(
                color: selectedIndex == index ? orangeColor : darkBlack,
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
