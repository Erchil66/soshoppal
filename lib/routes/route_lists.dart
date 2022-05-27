//*""""""""""""""""""""""""""""""""""""""""""*//
//*                                          *//
//*   Our List is Located here and if you    *//
//*   want to add your created page          *//
//*   but sometime is depends if you want    *//
//*   to named add page and also have name.  *//
//*                                          *//
//*""""""""""""""""""""""""""""""""""""""""""*//

// # Note : If you wanted to add binding or bindings please dont add here create separate dart with specific binding and connect
//          then in here.

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:soshoppal/routes/route_name.dart';
import 'package:soshoppal/views/auth_pages/sign_in_view.dart';
import 'package:soshoppal/views/auth_pages/sign_up_view.dart';
import 'package:soshoppal/views/main_pages/main_pages.dart';
import 'package:soshoppal/views/onboarding/onboarding_view.dart';
import 'package:soshoppal/views/splash/splash_view.dart';

class RouteLists {
  static final list = [
    // # Note : sometime calling const is required to avoind blue lines
    // # Splash
    GetPage(
      curve: Curves.easeIn,
      transition: Transition.fade,
      transitionDuration: 300.milliseconds,
      name: splash,
      page: () => const SplashScreeView(),
    ),
    // # Onboarding
    GetPage(
      curve: Curves.easeIn,
      transition: Transition.fade,
      transitionDuration: 300.milliseconds,
      name: onboarding,
      page: () => const OnboardingScreenView(),
    ),
    // # Sign In Screen
    GetPage(
      curve: Curves.easeIn,
      transition: Transition.fade,
      transitionDuration: 300.milliseconds,
      name: signIn,
      page: () => const SignInScreenView(),
    ),
    // # Sign Up Screen
    GetPage(
      curve: Curves.easeIn,
      transition: Transition.fade,
      transitionDuration: 300.milliseconds,
      name: signUp,
      page: () => const SignUpScreenView(),
    ),
    // # Main Screen
    GetPage(
      curve: Curves.easeIn,
      transition: Transition.fade,
      transitionDuration: 300.milliseconds,
      name: mainpage,
      page: () => const MainScreenView(),
    ),
  ];
}
