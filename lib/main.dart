import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:soshoppal/constants/my_storage.dart';
import 'package:soshoppal/routes/route_lists.dart';
import 'package:soshoppal/routes/route_name.dart';

void main() async {
  await GetStorage.init();
  // # Note: Please don't make GetStorage.init() to behind other it should always be first to initialized
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme:
              GoogleFonts.robotoFlexTextTheme(Theme.of(context).textTheme),
        ),
        getPages: RouteLists.list,
        // # Note : Let's identify if the user is already saw the onboading page so that we
        // #        we need to show this on first load but login or the main page if the
        // #        user stil log in or not
        initialRoute: MyStorage.getidentifier(key: onboardingShowOnce) !=
                    null &&
                MyStorage.getidentifier(key: stillLogIn) != null
            // # Note : if user is already saw the onboading page and still login
            // #        the user will be thrown to the mainpage but first need to show the splash screen
            // #        for user experience
            ? splash
            : MyStorage.getidentifier(key: onboardingShowOnce) != null &&
                    MyStorage.getidentifier(key: stillLogIn) == null
                // # Note : if user is already saw the onboading page and not login
                // #        the user will be thrown to the sign in view
                ? signIn
                // # Note : if user is not seen the onboading page and not login
                // #        the user will be thrown to the onboarding page
                : onboarding,
      ),
    );
  }
}
