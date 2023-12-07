import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    GoToNextScreen();
  }

  GoToNextScreen() {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Get.off(const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(child: SvgPicture.asset("assets/images/logo.svg",height: 200,)),
    );
  }
}
