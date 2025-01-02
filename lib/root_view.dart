import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:uber_eat/core/utils/app_color.dart';
import 'package:uber_eat/features/home/presentation/view/home_view.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  static const String routeName = '/root_view';

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController _pageController;
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeView(),
    Scaffold(
      body: Center(
        child: Text('Discovery'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Cart'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
          _pageController.animateToPage(value,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        indicatorColor: AppColor.kPrimaryColor50,
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(
            enabled: true,
            icon: Icon(
              IconlyLight.home,
              color: AppColor.kCoolGrey400,
            ),
            selectedIcon: Icon(
              IconlyBold.home,
              color: AppColor.kPrimaryColor900,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            enabled: true,
            icon: Icon(
              IconlyLight.category,
              color: AppColor.kCoolGrey400,
            ),
            selectedIcon: Icon(
              IconlyBold.category,
              color: AppColor.kPrimaryColor900,
            ),
            label: 'Discovery',
          ),
          NavigationDestination(
            enabled: true,
            icon: Icon(
              IconlyLight.bag_2,
              color: AppColor.kCoolGrey400,
            ),
            selectedIcon: Icon(
              IconlyBold.bag_2,
              color: AppColor.kPrimaryColor900,
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            enabled: true,
            icon: Icon(
              IconlyLight.profile,
              color: AppColor.kCoolGrey400,
            ),
            selectedIcon: Icon(
              IconlyBold.profile,
              color: AppColor.kPrimaryColor900,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
