import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
    //   return FutureBuilder(
    //       future: Future.delayed(
    //         const Duration(seconds: 3),
    //       ),
    //       builder: (context, snapshot) {
    //         if (snapshot.connectionState == ConnectionState.waiting) {
    //           return SplashScreen();
    //         } else {
    //           return GetMaterialApp(
    //             debugShowCheckedModeBanner: false,
    //             title: "Application",
    //             initialRoute: Routes.LOGIN,
    //             getPages: AppPages.routes,
    //           );
    //         }
    //       });
  }
}