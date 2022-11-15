import 'package:flutter/material.dart';

class OnboardingModel {
  String? image, heading, subheading;

  OnboardingModel({this.image, this.heading, this.subheading});
}

List<OnboardingModel> onboardingModelcontent = [
  OnboardingModel(
    image: "assets/onboarding.png",
    heading: 'SEARCH JOBS',
    subheading:
        'Plan your trip,choose your destination.\n Pick the best place for your holiday.',
  ),
  OnboardingModel(
    image: "assets/onboarding2.png",
    heading: 'APPLY JOBS ',
    subheading:
        'Plan your trip,choose your destination.\n Pick the best place for your holiday.',
  ),
  OnboardingModel(
    image: "assets/onboarding3.png",
    heading: 'READY TO WORK!',
    subheading:
        'Plan your trip,choose your destination.\n Pick the best place for your holiday.',
  ),
];
