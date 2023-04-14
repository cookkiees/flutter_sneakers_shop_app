import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneakers_shop_app/app/modules/home/widgets/popular_widget.dart';
import 'package:flutter_sneakers_shop_app/app/utils/my_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../components/myappbar_widget.dart';
import 'home_controller.dart';
import 'widgets/sales_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: MyAppbarWidgets(),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
          child: Column(
            children: [
              Container(
                height: 54,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What do you looking for?',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
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
                      indicator: BoxDecoration(
                        color: MyColors.green,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey.shade100),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      tabs: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/nike.svg"),
                              const Tab(text: ""),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/Vector.svg"),
                              const Tab(text: ""),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/adidas.svg"),
                              const Tab(text: ""),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/nba.svg"),
                              const Tab(text: ""),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 1.42,
                        child: TabBarView(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const PromoWidget(),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16),
                                      child: Text(
                                        "Popular Nike Shoes",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 470,
                                      child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: 2,
                                          itemBuilder: (ctx, i) {
                                            return const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 16),
                                              child: PopularWidget(),
                                            );
                                          }),
                                    )
                                  ],
                                )),
                            Center(
                              child:
                                  SvgPicture.asset("assets/icons/Vector.svg"),
                            ),
                            Center(
                              child:
                                  SvgPicture.asset("assets/icons/adidas.svg"),
                            ),
                            Center(
                              child: SvgPicture.asset("assets/icons/nba.svg"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
