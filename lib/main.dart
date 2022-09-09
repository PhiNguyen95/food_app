import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/pages/welcome/welcome_page.dart';
import 'package:foodie_app/resources/app_color.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie App',
      home: AnimatedSplashScreen(
        duration: 1500,
        splash: SizedBox(
          width: 500,
          height: 500,
          child: Image.asset(
            'assets/images/splashscr.png',
          fit: BoxFit.fitHeight,),
        ),
        nextScreen: const WelcomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: kFoodAppRed,
      ),
    );
  }
}

