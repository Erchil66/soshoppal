import 'package:get_storage/get_storage.dart';

const String onboardingShowOnce = "showOnce";
const String stillLogIn = "logIn";

class MyStorage {
  static final box = GetStorage();
  static setidentifier({String? key, String? value}) => box.write(key!, value!);
  static String? getidentifier({String? key}) => box.read(key!);
}
