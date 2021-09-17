import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project_no1/Listofproduct/Design_product.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash:  Image.asset(
          "images/undraw_logistics_x4dc.png"
          ),
          nextScreen: Designproduct(),
          splashTransition: SplashTransition.scaleTransition,
          duration: 3500,
      ),
    );
  }
}
