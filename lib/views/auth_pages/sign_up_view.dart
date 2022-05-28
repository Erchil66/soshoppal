import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:soshoppal/constants/assets_paths.dart';
import 'package:soshoppal/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:soshoppal/controllers/sign_in_up_controller.dart';
import 'package:soshoppal/routes/route_name.dart';
import 'package:soshoppal/widgets/auth_widgets/below_widget_signin_or_signup.dart';
import 'package:soshoppal/widgets/buttons/button_with_icon_at_end.dart';
import 'package:soshoppal/widgets/texts/text_custom.dart';
import 'package:soshoppal/widgets/texts/textfield_black.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInSignUpController());
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AssetInternal.signUpbg,
                        width: 375,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextWithStyleFlex(
                          label: "Create an",
                          weight: FontWeight.w900,
                          textsize: 26.sp,
                          color: darkBlack,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 65),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextWithStyleFlex(
                          label: "Account now!",
                          weight: FontWeight.w900,
                          textsize: 16.sp,
                          color: darkBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.5.h,
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
                editingController: controller.email,
                assetImage: AssetInternal.username,
                hintText: "Username",
                onchange: (s) {},
                validator: (s) {},
              ),
              SizedBox(
                height: 3.5.h,
              ),
              TextfieldCustomBlack(
                editingController: controller.email,
                assetImage: AssetInternal.mobileIcon,
                hintText: "Mobile number",
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
                height: 3.5.h,
              ),
              TextfieldCustomBlack(
                editingController: controller.confirmpassword,
                assetImage: AssetInternal.passwordIcon,
                obsecureText: true,
                hintText: "Confirm Password",
                onchange: (s) {},
                validator: (s) {},
              ),
              SizedBox(
                height: 4.5.h,
              ),
              ButtonCustominEnd(
                buttoname: "Sign up",
                buttonBackground: orangeColor,
                iconEnd: AssetInternal.iconRightIcon,
                iconcolor: whiteColor,
                fontsize: 16.sp,
                press: () {},
              ),
              SizedBox(
                height: 5.5.h,
              ),
              MyRichTextWithSocialLogin(
                showAbove: false,
                facebook: () {},
                gmail: () {},
                textRich: "Sign in now.",
                belowRichText1: "Already have an account?",
                pressRich: () => Get.toNamed(signIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
