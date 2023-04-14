import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppbarWidgets extends StatelessWidget {
  const MyAppbarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      toolbarHeight: 300,
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/line-2.svg'),
            const Text("Sneak-er",
                style: TextStyle(fontSize: 27, color: Colors.black)),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/shopping-bag.svg',
                height: 26,
              )),
        ),
      ],
    );
  }
}
