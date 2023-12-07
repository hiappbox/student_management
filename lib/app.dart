import 'package:flutter/material.dart';
import 'splash_sceeen.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SManageApp extends StatelessWidget {
  const SManageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SManageApp',
          home: SplashScreen(),
        );
      },
    );
  }
}