import 'package:soshoppal/constants/assets_paths.dart';

class OnboardingModel {
  final String? headtitle;
  final String? description;
  final String? imageattach;

  OnboardingModel({this.headtitle, this.description, this.imageattach});
}

final List<OnboardingModel> listonboarding = [
  OnboardingModel(
      headtitle: "PICK TO BUY / FOR WISHLIST",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
      imageattach: AssetInternal.onboardingImage_1),
  OnboardingModel(
      headtitle: "PAY",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
      imageattach: AssetInternal.onboardingImage_2),
  OnboardingModel(
      headtitle: "DELIVER",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod libero quis tortor malesuada lacinia.",
      imageattach: AssetInternal.onboardingImage_3),
];
