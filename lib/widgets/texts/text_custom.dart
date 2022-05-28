import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextWithStyleFlex extends StatelessWidget {
  final String? label;
  final Color? color;
  final double? textsize;
  final TextAlign? align;
  final FontWeight? weight;

  const TextWithStyleFlex(
      {super.key,
      this.label,
      this.color,
      this.textsize,
      this.align,
      this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      label!,
      textAlign: align ?? TextAlign.left,
      style: GoogleFonts.robotoFlex(
          color: color ?? forText,
          fontSize: textsize ?? 14.sp,
          fontWeight: weight ?? FontWeight.w400),
    );
  }
}
