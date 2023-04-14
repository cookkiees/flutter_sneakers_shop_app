import 'package:flutter_sneakers_shop_app/app/modules/details/details_controller.dart';
import 'package:flutter_sneakers_shop_app/app/modules/home/home_controller.dart';
import 'package:flutter_sneakers_shop_app/app/modules/main/main_controller.dart';
import 'package:flutter_sneakers_shop_app/app/modules/onboarding/onboarding_controller.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect {}

class ApiServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => OnboardingController());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DetailsController());
  }
}
