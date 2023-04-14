import 'package:get/get.dart';

class DetailsController extends GetxController {
  List<num> size = [8, 8.5, 9, 9.5, 10];

  var tabIndex = 0.obs;

  void changeTabIndex(index) {
    tabIndex.value = index;
    update();
  }
}
