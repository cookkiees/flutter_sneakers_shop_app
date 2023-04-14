import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabBarViewsDetailsShoesWidget extends StatelessWidget {
  const TabBarViewsDetailsShoesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          left: 16,
          bottom: 0,
          child: Image.asset(
            "assets/images/shoes-8.png",
          ),
        ),
        Positioned(
          left: 18,
          child: SvgPicture.asset(
            "assets/icons/line-3.svg",
            height: 240,
          ),
        )
      ],
    );
  }
}
