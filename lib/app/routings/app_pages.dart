import 'package:get/get.dart';
import '../modules/main/main_page.dart';
import '../modules/onboarding/onboarding_page.dart';
import '../modules/onboarding/onborading_binding.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.onboarding;

  static final routes = [
    GetPage(
      name: AppRouters.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRouters.main,
      page: () => const MainPage(),
      binding: OnboardingBinding(),
    ),
  ];
}
