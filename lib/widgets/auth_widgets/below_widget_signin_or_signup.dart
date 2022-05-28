import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:soshoppal/constants/assets_paths.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:soshoppal/widgets/texts/text_custom.dart';

class MyRichTextWithSocialLogin extends StatelessWidget {
  final bool? showAbove;
  final String? belowRichText1;
  final String? textRich;
  final Function()? pressRich;
  final Function()? gmail;
  final Function()? facebook;

  const MyRichTextWithSocialLogin(
      {super.key,
      this.showAbove,
      this.belowRichText1,
      this.textRich,
      this.pressRich,
      this.gmail,
      this.facebook});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 27.5.w,
      width: 275,
      child: Column(
        children: [
          showAbove == false
              ? const SizedBox.shrink()
              : SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: grayrats,
                                thickness: 1,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                              width: 1.5.w,
                            ),
                            const TextWithStyleFlex(
                              label: "or Sign in with",
                              color: grayrats,
                            ),
                            const Expanded(
                              child: Divider(
                                color: grayrats,
                                thickness: 1,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: gmail,
                              behavior: HitTestBehavior.deferToChild,
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetInternal.gmailIcon,
                                      height: 4.8.h,
                                    ),
                                    SizedBox(
                                      height: 1.9.h,
                                    ),
                                    TextWithStyleFlex(
                                      label: "Gmail",
                                      color: forText1,
                                      textsize: 15.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: facebook,
                              behavior: HitTestBehavior.deferToChild,
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      AssetInternal.facebookIcon,
                                      height: 4.8.h,
                                      color: const Color(0xFF2AA4F4),
                                    ),
                                    SizedBox(
                                      height: 1.9.h,
                                    ),
                                    TextWithStyleFlex(
                                      label: "Facebook",
                                      color: forText1,
                                      textsize: 15.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.5.h,
                      ),
                    ],
                  ),
                ),
          GestureDetector(
            behavior: HitTestBehavior.deferToChild,
            onTap: pressRich,
            child: SizedBox(
                child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$belowRichText1 ",
                    style: GoogleFonts.robotoFlex(
                        color: darkBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: "$textRich ",
                    style: GoogleFonts.robotoFlex(
                        color: orangeColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
