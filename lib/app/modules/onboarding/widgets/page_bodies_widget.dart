import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageBodiesWidget extends StatelessWidget {
  const PageBodiesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 90,
          child: Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset("assets/icons/line-2.svg"),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const Text(
                "Sneak-er",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              const SizedBox(height: 8),
              Text(
                "Find amazing deals!",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
              ),
              const SizedBox(height: 8),
              SvgPicture.asset("assets/icons/line-8.svg"),
            ],
          ),
        ),
        Positioned(
          left: 50,
          top: 300,
          child: SvgPicture.asset("assets/icons/line-7.svg"),
        ),
        Positioned(
          right: 30,
          bottom: 100,
          child: SvgPicture.asset("assets/icons/line-6.svg"),
        ),
        Positioned(
          left: 40,
          bottom: 100,
          child: SvgPicture.asset("assets/icons/line-5.svg"),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/images/shoes-6.png",
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/shoes-4.png",
          ),
        ),
      ],
    );
  }
}
