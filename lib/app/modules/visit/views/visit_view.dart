import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales/widgets/bottom_navigator.dart';

import '../controllers/visit_controller.dart';

class VisitView extends GetView<VisitController> {
  const VisitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Center(
        child: Text(
          'VisitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
