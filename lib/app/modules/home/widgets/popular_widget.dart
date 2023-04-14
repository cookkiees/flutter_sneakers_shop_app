import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneakers_shop_app/app/utils/my_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 40,
          child: Image.asset(
            "assets/images/shoes-7.png",
          ),
        ),
        Positioned(
            left: 30,
            top: 20,
            child: SvgPicture.asset("assets/icons/line-5.svg")),
        Positioned(
          right: 16,
          top: 16,
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: MyColors.green,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Favorite.svg"),
          ),
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: MyColors.green,
              shape: BoxShape.circle,
            ),
            child: const Text(
              "\$ 189",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  "AIR MAX PEGASUS 37",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              RatingBar.builder(
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
              Padding(
                padding: const EdgeInsets.only(left: 3.0, top: 5, bottom: 8),
                child: Text(
                  "Men’s Running shoes",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
