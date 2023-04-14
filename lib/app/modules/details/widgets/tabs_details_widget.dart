import 'package:flutter/material.dart';

class TabsDetailsShoesWidget extends StatelessWidget {
  const TabsDetailsShoesWidget({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$name.png",
          ),
          const Tab(text: ""),
        ],
      ),
    );
  }
}
