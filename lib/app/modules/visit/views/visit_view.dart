import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales/widgets/bottom_navigator.dart';

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
              Text("Visits"),
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
              Colors.white,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigator(),
      ),
    );
  }
}

class VisitBody extends StatelessWidget {
  late Color colorHeader;
  late Color colorHeaderFont;
  late String status;
  VisitBody(this.colorHeader, this.status, this.colorHeaderFont);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 180,
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(color: Color.fromARGB(255, 230, 228, 228)),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: 40,
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: colorHeader,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VSN20220700001",
                            style: TextStyle(
                              color: colorHeaderFont,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "$status",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
