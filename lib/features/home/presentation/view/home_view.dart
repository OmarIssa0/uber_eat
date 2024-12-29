import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = 'home_view';

  static const String routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
