
import 'package:flutter/material.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/core/utils/app_styles.dart';

class ListViewAvailablePromo extends StatelessWidget {
  const ListViewAvailablePromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
              border: Border.all(color: Colors.grey.shade300, width: .5),
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
                Container(
                  height: 32,
                  width: 66,
                  decoration: BoxDecoration(
                    color: AppColor.kRose500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "35% off",
                      style:
                          AppStyles.regular12.copyWith(color: AppColor.kWhite),
                    ),
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
