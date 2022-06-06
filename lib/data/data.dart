import 'package:onboard_screen/models/onboarding_info.dart';

class OnboardingController {
  int selectedPageIndex = 0;

  final List<OnboardingInfo> _onboardingPages = [
    OnboardingInfo("assets/picture1.png", "Easy And Personalized Insurance",
        "We offer easy,flexible and tailored-to-fit insurance products"),
    OnboardingInfo("assets/picture3.png", "Trust Customer centricity and integrity",
        "We are passionate about providing our customers with a unique and enriched insurance experience"),
    OnboardingInfo("assets/picture4.png", "Faster Claim Processing Payment",
        "With real time processing and updating technology, your claims are guaranteed to be settle withing 24 hours."),
  ];

  String getImageAsset(int index) {
    return _onboardingPages[index].imageAsset;
  }

  String getTitle(int index) {
    return _onboardingPages[index].title;
  }

  String getDescription(int index) {
    return _onboardingPages[index].description;
  }

  int getPagesLength() {
    return _onboardingPages.length;
  }
}






