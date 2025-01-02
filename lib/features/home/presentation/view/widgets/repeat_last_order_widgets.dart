
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';

class RepeatLastOrderWidgets extends StatelessWidget {
  const RepeatLastOrderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        padding: EdgeInsets.all(18),
        // height: 164,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Positioned(
              top: 16,
              left: 16,
              bottom: 16,
              child: Container(
                height: 132,
                width: 132,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            // SizedBox(width: 18),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.shop,
                        size: 14,
                        color: AppColor.kCoolGrey400,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Hawkins Donuts",
                        style: AppStyles.regular14.copyWith(
                          color: AppColor.kCoolGrey400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 - 32,
                    child: Text(
                      "Chocolate Donuts with Choco Chips",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppStyles.bold16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4.9",
                        style: AppStyles.regular12.copyWith(
                          color: AppColor.kCoolGrey400,
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xffd9d9d9),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColor.kCoolGrey400,
                        size: 18,
                      ),
                      Text(
                        "0.8 km",
                        style: AppStyles.regular12.copyWith(
                          color: AppColor.kCoolGrey400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "42 JO",
                        style: AppStyles.medium14,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "50 JO",
                        style: AppStyles.regular12.copyWith(
                          color: AppColor.kCoolGrey400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}