import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              child: Image.asset("assets/images/bg2.png"),
            ),
            Center(
              child: Container(
                width: Get.width * 0.5,
                height: Get.height * 0.5,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
