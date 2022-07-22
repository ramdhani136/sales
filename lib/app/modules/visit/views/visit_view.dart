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
              Text("Visit List"),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 48),
                          Text(
                            "KARYA ABADI FURNITURE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Jl. Pahlawan No 21 Sentul City Bogor Selatan , Desa Sanja , Jawa Barat ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Group : Area 1",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -0,
                    child: Container(
                      width: Get.width - 40,
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
                                fontSize: 16.5,
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
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: Get.width - 40,
                      height: 40,
                      margin: EdgeInsets.only(
                        bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 230, 228, 228)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ilham Ramdhani",
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 15.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.5,
                                  ),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    size: 14,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "27 Juli 2022 | 14:92",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
