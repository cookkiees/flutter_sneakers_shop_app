import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/my_colors.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 25,
            top: 15,
            child: Image.asset("assets/images/shoes-1.png"),
          ),
          Positioned(
            right: 100,
            top: 15,
            child: SvgPicture.asset(
              ("assets/icons/new.svg"),
              height: 40,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 30,
            child: SvgPicture.asset(
              ("assets/icons/line-1.svg"),
              height: 20,
            ),
          ),
          Positioned(
            left: 25,
            top: 27,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Summer Sale",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Nike Air Max",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "15%  OFF",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
