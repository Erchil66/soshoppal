import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:soshoppal/constants/colors.dart';

class OnboardingWidgetHoler extends StatelessWidget {
  final bool? showGetStarted;
  final Function()? skipOrgetStarted;
  final String? headTitle;
  final String? description;
  final String? pngImage;

  const OnboardingWidgetHoler(
      {super.key,
      this.showGetStarted,
      this.skipOrgetStarted,
      this.headTitle,
      this.description,
      this.pngImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 1.5.h,
            // ),
            SizedBox(
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
            SizedBox(
              height: 3.5.h,
            ),
            Text(
              "$headTitle",
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoFlex(
                  color: darkBlack,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45),
              child: Text(
                description!,
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoFlex(),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            SizedBox(
                child: Image.asset(
              pngImage!,
              height: 375,
              width: 375,
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }
}
