import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_image.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/core/utils/custom_button_with_icon.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/top_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopHomeView(),
          SizedBox(height: 32),
          Padding(
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
                                    height: MediaQuery.of(context).size.width *
                                            0.5 -
                                        32,
                                    width: MediaQuery.of(context).size.width *
                                            0.35 -
                                        18,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          colorBackGround:
                                              AppColor.kPrimaryColor900,
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
          ),
          Column(
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text("Category"),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Promo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                // height: 128,
                // width: 264,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 32,
                      width: 66,
                      decoration: BoxDecoration(
                        color: AppColor.kRose500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "35% off",
                        style: AppStyles.regular12
                            .copyWith(color: AppColor.kWhite),
                      ),
                    )
                  ],
                ),
              )
              // SizedBox(
              //   height: 200,
              //   child: ListView.builder(
              //     itemCount: 5,
              //     scrollDirection: Axis.horizontal,
              //     physics: BouncingScrollPhysics(),
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(left: 16),
              //         child: Column(
              //           children: [
              //             Container(
              //               height: 150,
              //               width: 150,
              //               decoration: BoxDecoration(
              //                 color: Colors.grey,
              //                 borderRadius: BorderRadius.circular(10),
              //               ),
              //             ),
              //             SizedBox(height: 8),
              //             Text("Restaurant"),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
