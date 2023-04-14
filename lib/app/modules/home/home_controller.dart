import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(index) {
    tabIndex.value = index;
    update();
  }

  List<String> icons = [
    "assets/icons/nike.svg",
    "assets/icons/Vector.svg",
    "assets/icons/adidas.svg",
    "assets/icons/nba.svg",
  ];
}
