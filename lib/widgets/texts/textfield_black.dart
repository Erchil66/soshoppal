import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soshoppal/constants/assets_paths.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextfieldCustomBlack extends StatelessWidget {
  final TextEditingController? editingController;
  final TextInputType? inputType;
  final TextCapitalization? capitalization;
  final bool? obsecureText;
  final void Function(String)? onchange;
  final String? Function(String?)? validator;
  final String? assetImage;
  final String? hintText;

  const TextfieldCustomBlack(
      {super.key,
      this.editingController,
      this.inputType,
      this.capitalization,
      this.obsecureText,
      this.onchange,
      this.validator,
      this.assetImage,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: darkBlack, borderRadius: BorderRadius.circular(5)),
      width: 265,
      child: TextFormField(
        autofocus: false,
        autocorrect: false,
        controller: editingController,
        keyboardType: inputType ?? TextInputType.text,
        obscureText: obsecureText ?? false,
        onChanged: onchange,
        validator: validator,
        cursorColor: whiteColor,
        style: GoogleFonts.robotoFlex(
          color: whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.robotoFlex(
            color: grayrats,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
          contentPadding: const EdgeInsets.all(15.0),
          prefixIcon: SizedBox(
            width: 8.5.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetImage!,
                  height: 2.h,
                  // width: 2.w,
                  color: grayrats,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  color: grayrats,
                  height: 3.2.h,
                  width: 0.75,
                ),
              ],
            ),
          ),
          // prefix:
          disabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          fillColor: darkBlack,
        ),
      ),
    );
  }
}
