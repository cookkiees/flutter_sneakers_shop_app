import 'package:flutter_sneakers_shop_app/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailsController());
  }
}
