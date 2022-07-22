import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sales/app/data/models/visits_model.dart';
import 'package:sales/widgets/bottom_navigator.dart';
import 'package:sales/widgets/visit_body.dart';

import '../controllers/visit_controller.dart';

class VisitView extends GetView<VisitController> {
  const VisitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar MyTabBar = TabBar(
      indicatorColor: Color(0xFFF9D934),
      tabs: [
        Tab(
          child: Text(
            "ACTIVE",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 95, 95, 95),
            ),
          ),
        ),
        Tab(
          child: Text(
            "COMPLETED",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 95, 95, 95),
            ),
          ),
        ),
        Tab(
          child: Text(
            "CANCELED",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 95, 95, 95),
            ),
          ),
        ),
      ],
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
              Text(
                "Visit List",
                style: TextStyle(fontSize: 18),
              ),
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
                    Icons.add,
                    color: Color.fromARGB(255, 121, 8, 14),
                  ),
                ),
              ])
            ],
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MyTabBar.preferredSize.height),
            child: Container(
              height: 55,
              child: MyTabBar,
              color: Colors.white,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            VisitBody(
              Color(0xFFE8A53A),
              "Draft",
              Color.fromARGB(255, 250, 236, 214),
            ),
            VisitBody(
              Color(0xFF20826B),
              "Submitted",
              Color.fromARGB(255, 190, 255, 240),
            ),
            VisitBody(
              Color(0xFF657187),
              "Canceled",
              Color.fromARGB(255, 230, 230, 230),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigator(),
      ),
    );
  }
}
