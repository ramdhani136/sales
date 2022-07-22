import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sales/app/data/models/visits_model.dart';
import 'package:sales/app/modules/visit/controllers/visit_controller.dart';
import 'package:sales/widgets/bottom_navigator.dart';

class VisitBody extends GetView<VisitController> {
  late Color colorHeader;
  late Color colorHeaderFont;
  late String status;
  VisitBody(this.colorHeader, this.status, this.colorHeaderFont);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: FutureBuilder<List<Visits>>(
            future: controller.getAllVisit(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFE6212A),
                  ),
                );
              }

              if (snap.data?.length == 0) {
                return Center(
                  child: Text(
                    "Please check your connection!",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                    ),
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      // controller: controller.searchC,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey[300],
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 230, 228, 228),
                              width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 69, 69, 69),
                              width: 2.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                          itemCount: snap.data?.length,
                          itemBuilder: (context, index) {
                            String isPage;
                            if (status == "Draft") {
                              isPage = "0";
                            } else if (status == "Submitted") {
                              isPage = "1";
                            } else {
                              isPage = "2";
                            }

                            if (snap.data?[index].status == isPage) {
                              return InkWell(
                                onTap: () {
                                  print("${snap.data?[index].id}");
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      height: 185,
                                      margin: EdgeInsets.only(
                                        bottom: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 230, 228, 228),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 48),
                                            Text(
                                              "${snap.data?[index].customer?.name}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              snap.data?[index].address !=
                                                          null &&
                                                      snap.data?[index]
                                                              .address !=
                                                          ""
                                                  ? "${snap.data?[index].address}"
                                                  : "No address yet",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Group : ${snap.data?[index].customer?.customergroup?.name}",
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                //  "${controller.searchC.value}",
                                                "${snap.data?[index].name}",
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
                                              color: Color.fromARGB(
                                                  255, 230, 228, 228)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${snap.data?[index].user?.name}",
                                                style: TextStyle(
                                                  color: Colors.grey[800],
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 2.5,
                                                    ),
                                                    child: Icon(
                                                      Icons.date_range_outlined,
                                                      size: 14,
                                                      color: Colors.grey[500],
                                                    ),
                                                  ),
                                                  Text(
                                                    "${DateFormat.yMd().add_jm().format(
                                                          DateTime.parse(
                                                              "${snap.data?[index].createdAt}"),
                                                        )}",
                                                    style: TextStyle(
                                                      color: Colors.grey[500],
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.5,
                                                      fontStyle:
                                                          FontStyle.italic,
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
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                  ],
                );
              }
            }),
      ),
    );
  }
}
