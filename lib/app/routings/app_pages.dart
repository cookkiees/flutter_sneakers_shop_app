import 'package:flutter_sneakers_shop_app/app/modules/home/home_binding.dart';
import 'package:flutter_sneakers_shop_app/app/modules/home/home_page.dart';
import 'package:flutter_sneakers_shop_app/app/modules/main/main_binding.dart';
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
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
