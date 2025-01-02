import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_image.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/core/utils/custom_button_with_icon.dart';

class WidgetsBestChoice extends StatelessWidget {
  const WidgetsBestChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today’s Best Choice", style: AppStyles.bold16),
          SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        Assets.imageTopHome,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      bottom: 16,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.width * 0.5 - 32,
                              width:
                                  MediaQuery.of(context).size.width * 0.35 - 18,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(width: 18),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Big Brother Donuts\n#BestFriendsPackage",
                                  style: AppStyles.bold16.copyWith(
                                    color: Colors.white,
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
                                      style: AppStyles.bold16.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "(124 ratings)",
                                      style: AppStyles.regular14.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                SizedBox(
                                  height: 40,
                                  child: CustomButtonWithIcon(
                                    colorBackGround: AppColor.kPrimaryColor900,
                                    colorIcon: AppColor.kWhite,
                                    colorText: AppColor.kWhite,
                                    minimumSize: Size.zero,
                                    icon: IconlyLight.bag,
                                    text: "Order Now",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
