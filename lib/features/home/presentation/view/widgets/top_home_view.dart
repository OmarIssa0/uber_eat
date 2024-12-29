import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_image.dart';
import 'package:uber_eat/core/widgets/custom_text_filed.dart';

class TopHomeView extends StatelessWidget {
  const TopHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          Assets.imageTopHome,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Delivered to",
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.arrow_drop_down, color: Colors.white),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.white),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Current Location",
                              style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.notifications_none_outlined,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                    child: ClipOval(
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                "Find the best food\naround You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 36),
              CustomTextFiled(
                fillColor: Colors.white,
                title: "Search food, store",
                textInputType: TextInputType.text,
                suffixIcon: Icon(
                  IconlyLight.search,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
