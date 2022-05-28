import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingTop extends StatelessWidget implements PreferredSize {
  final bool? showGetStarted;
  final Function()? skipOrgetStarted;

  const OnboardingTop({super.key, this.showGetStarted, this.skipOrgetStarted});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: SizedBox(
            width: 375,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                showGetStarted == true
                    ? SizedBox(
                        child: ElevatedButton(
                          onPressed: skipOrgetStarted,
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: orangeColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.robotoFlex(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(
                        child: GestureDetector(
                          onTap: skipOrgetStarted,
                          behavior: HitTestBehavior.deferToChild,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "SKIP",
                              style: GoogleFonts.robotoFlex(
                                color: forText,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget get child => throw UnimplementedError();
}
