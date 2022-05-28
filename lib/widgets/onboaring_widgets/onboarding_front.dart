import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:soshoppal/constants/colors.dart';

class OnboardingWidgetHoler extends StatelessWidget {
  final String? headTitle;
  final String? description;
  final String? pngImage;

  const OnboardingWidgetHoler(
      {super.key, this.headTitle, this.description, this.pngImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
