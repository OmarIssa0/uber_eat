import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/list_view_available_promo.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/name_part_and_see_more.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/repeat_last_order_widgets.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/top_home_view.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/widgets_best_choice.dart';

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
          WidgetsBestChoice(),
          SizedBox(height: 16),
          NamePartAndSeeMore(
            name: "Categories",
            onPressed: () {},
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
                      Text("Category", style: AppStyles.regular14),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          NamePartAndSeeMore(
            name: "Available Promo",
            onPressed: () {},
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: ListViewAvailablePromo(),
          ),
          SizedBox(height: 32),
          NamePartAndSeeMore(
            name: "Popular Restaurants",
            onPressed: () {},
            isSeeAll: false,
          ),
          RepeatLastOrderWidgets(),
          SizedBox(height: 16),
          NamePartAndSeeMore(
            name: "Special For You",
            onPressed: () {},
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 280,
            child: ListView.builder(
              itemCount: 5,
              // shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      // color: Colors.,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.grey.shade300, width: .5),
                    ),
                    // height: 128,
                    width: 128,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text("Hawkins\nDonuts", style: AppStyles.bold14),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "4.9",
                              style: AppStyles.bold14,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              "1.2 km",
                              style: AppStyles.regular12,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "42 JO",
                              style: AppStyles.regular14
                                  .copyWith(color: AppColor.kPrimaryColor900),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
