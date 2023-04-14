import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_sneakers_shop_app/app/utils/my_colors.dart';
import 'package:get/get.dart';
import 'onboarding_controller.dart';
import 'widgets/page_bodies_widget.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Shop Now',
      finishButtonTextStyle: const TextStyle(
          color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      onFinish: () {},
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: MyColors.green,
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontFamily: "Outfit-bold",
          fontSize: 16,
          color: MyColors.green,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: Colors.grey,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Container(),
        Container(),
        Container(),
      ],
      speed: 1.8,
      pageBodies: const [
        PageBodiesWidget(),
        PageBodiesWidget(),
        PageBodiesWidget(),
      ],
    );
  }
}
