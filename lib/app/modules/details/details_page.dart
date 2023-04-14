import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../utils/my_colors.dart';
import 'details_controller.dart';
import 'widgets/actions_appbar_widget.dart';
import 'widgets/tabbarviews_details_shoes_widget.dart';
import 'widgets/tabs_details_widget.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        centerTitle: true,
        title: RatingBar.builder(
          glow: false,
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20,
          itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            size: 10,
            color: Colors.black,
          ),
          onRatingUpdate: (rating) {
            if (kDebugMode) {
              print(rating);
            }
          },
        ),
        actions: const [
          ActionsAppbarWidget(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 4,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    child: const TabBarView(
                      children: [
                        TabBarViewsDetailsShoesWidget(),
                        TabBarViewsDetailsShoesWidget(),
                        TabBarViewsDetailsShoesWidget(),
                        TabBarViewsDetailsShoesWidget(),
                      ],
                    ),
                  ),
                  TabBar(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      return states.contains(MaterialState.focused)
                          ? null
                          : Colors.transparent;
                    }),
                    splashFactory: NoSplash.splashFactory,
                    physics: const NeverScrollableScrollPhysics(),
                    labelColor: Colors.black,
                    splashBorderRadius:
                        const BorderRadius.all(Radius.circular(24)),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                    unselectedLabelColor: Colors.grey,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 16),
                    indicator: BoxDecoration(
                      color: MyColors.green,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey.shade100),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    tabs: const [
                      TabsDetailsShoesWidget(
                        name: "shoes-8",
                      ),
                      TabsDetailsShoesWidget(
                        name: "shoes-2",
                      ),
                      TabsDetailsShoesWidget(
                        name: "shoes-3",
                      ),
                      TabsDetailsShoesWidget(
                        name: "shoes-5",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  height: 455,
                  padding: const EdgeInsets.all(32),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nike",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500),
                              ),
                              const Text(
                                "AIR MAX PEGASUS 37",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Men’s Running shoe",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                          Container(
                            height: 60,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(7),
                            decoration: const BoxDecoration(
                              color: MyColors.green,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              "\$ 189",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "An athletic shoe is a name for a shoe designed for\nsporting and physical activities, and is different in style.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Selected Size",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.size.length,
                          itemBuilder: (ctx, i) {
                            return Obx(
                              () => Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.changeTabIndex(i);
                                    },
                                    child: Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: controller.tabIndex.value == i
                                            ? MyColors.green
                                            : Colors.white,
                                      ),
                                      child: Stack(
                                        children: [
                                          if (controller.tabIndex.value == i)
                                            Positioned(
                                              top: 4,
                                              right: 4,
                                              child: SvgPicture.asset(
                                                  "assets/icons/Check.svg"),
                                            )
                                          else
                                            const SizedBox(),
                                          Center(
                                            child: Text(
                                              controller.size[i].toString(),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 27),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            backgroundColor: MyColors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/shopping-bag.svg"),
                              const SizedBox(width: 8),
                              const Text(
                                "Add to cart",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
