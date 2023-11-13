import 'package:azkar/view/screen/home_screen.dart';
import 'package:azkar/view/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Stack(
        children: [
          LiquidSwipe(
            enableLoop: false,
            pages: [
              WelcomeScreen(),
              HomeSreen(),
            ],
          )
        ],
      ),
    );
  }
}
