import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:soshoppal/widgets/texts/text_custom.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonCustominEnd extends StatelessWidget {
  final Function()? press;
  final String? buttoname;
  final String? iconEnd;
  final Color? iconcolor;
  final Color? buttonBackground;
  final double? fontsize;
  final Color? fontcolor;

  const ButtonCustominEnd(
      {super.key,
      this.press,
      this.buttoname,
      this.iconEnd,
      this.iconcolor,
      this.buttonBackground,
      this.fontsize,
      this.fontcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 265,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: buttonBackground ?? orangeColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: TextWithStyleFlex(
                    label: buttoname ?? "",
                    textsize: fontsize,
                    color: fontcolor ?? whiteColor,
                  ),
                ),
              ),
              SvgPicture.asset(
                iconEnd!,
                height: 2.9.h,
                color: iconcolor ?? whiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
