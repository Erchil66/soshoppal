import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:soshoppal/constants/assets_paths.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:soshoppal/controllers/sign_in_up_controller.dart';
import 'package:soshoppal/routes/route_name.dart';
import 'package:soshoppal/widgets/auth_widgets/below_widget_signin_or_signup.dart';
import 'package:soshoppal/widgets/buttons/button_with_icon_at_end.dart';
import 'package:soshoppal/widgets/texts/textfield_black.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInScreenView extends StatelessWidget {
  const SignInScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInSignUpController());
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              AssetInternal.signinBg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 50,
            top: 165,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 6.5.h,
                    ),
                    TextfieldCustomBlack(
                      editingController: controller.email,
                      assetImage: AssetInternal.emailIcon,
                      hintText: "Email",
                      onchange: (s) {},
                      validator: (s) {},
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                    TextfieldCustomBlack(
                      editingController: controller.password,
                      assetImage: AssetInternal.passwordIcon,
                      obsecureText: true,
                      hintText: "Password",
                      onchange: (s) {},
                      validator: (s) {},
                    ),
                    SizedBox(
                      height: 10.5.h,
                    ),
                    ButtonCustominEnd(
                      buttoname: "Sign in",
                      buttonBackground: orangeColor,
                      iconEnd: AssetInternal.iconRightIcon,
                      iconcolor: whiteColor,
                      fontsize: 16.sp,
                      press: () {},
                    ),
                    SizedBox(
                      height: 8.5.h,
                    ),
                    MyRichTextWithSocialLogin(
                      showAbove: true,
                      facebook: () {},
                      gmail: () {},
                      textRich: "Sign up now.",
                      belowRichText1: "Don't have an account yet?",
                      pressRich: () => Get.toNamed(signUp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // body:
    );
  }
}
