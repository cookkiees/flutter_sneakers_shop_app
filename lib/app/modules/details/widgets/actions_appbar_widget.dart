import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_colors.dart';

class ActionsAppbarWidget extends StatelessWidget {
  const ActionsAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
            color: MyColors.green,
            shape: BoxShape.circle,
          ),
          child: const Text(
            "2",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/shopping-bag.svg',
              height: 26,
            ),
          ),
        ),
      ],
    );
  }
}
