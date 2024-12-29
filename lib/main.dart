import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/view/forgot_password_view.dart';
import 'package:uber_eat/features/auth/presentation/view/login_view.dart';
import 'package:uber_eat/features/auth/presentation/view/sign_up_view.dart';
import 'package:uber_eat/features/home/presentation/view/home_view.dart';
import 'package:uber_eat/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Eats',
      theme: ThemeData(
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        fontFamily: 'ReadexPro',
      ),
      initialRoute: HomeView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        LoginView.routeName: (context) => LoginView(),
        SignUpView.routeName: (context) => SignUpView(),
        ForgotPasswordView.routeName: (context) => ForgotPasswordView(),
        HomeView.routeName: (context) => HomeView(),
      },
    );
  }
}
