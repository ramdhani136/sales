import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales/widgets/bottom_navigator.dart';
import 'package:sales/widgets/home_body.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE6212A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 121, 8, 14),
              ),
            ),
            Text("SalesApp"),
            Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 121, 8, 14),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 121, 8, 14),
                ),
              ),
            ])
          ],
        ),
        centerTitle: true,
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
