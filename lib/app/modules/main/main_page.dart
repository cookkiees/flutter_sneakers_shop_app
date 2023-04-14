import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../utils/my_colors.dart';

import 'main_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {});
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            fontFamily: "Outfit-bold",
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: MyColors.green,
          unselectedItemColor: Colors.black,
          onTap: controller.changeTabIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SvgPicture.asset("assets/icons/Rectangle 5.svg",
                    colorFilter: controller.tabIndex == 0
                        ? const ColorFilter.mode(
                            MyColors.green, BlendMode.srcIn)
                        : null),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SvgPicture.asset("assets/icons/Search.svg",
                    colorFilter: controller.tabIndex == 1
                        ? const ColorFilter.mode(
                            MyColors.green, BlendMode.srcIn)
                        : null),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SvgPicture.asset("assets/icons/Favorite.svg",
                    colorFilter: controller.tabIndex == 2
                        ? const ColorFilter.mode(
                            MyColors.green, BlendMode.srcIn)
                        : null),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SvgPicture.asset("assets/icons/Profile.svg",
                    colorFilter: controller.tabIndex == 3
                        ? const ColorFilter.mode(
                            MyColors.green, BlendMode.srcIn)
                        : null),
              ),
              label: '',
            ),
          ],
        ),
      );
    });
  }
}
