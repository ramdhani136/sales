import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales/app/routes/app_pages.dart';
import 'package:sales/widgets/home_profile.dart';
import 'package:sales/widgets/home_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          SizedBox(height: 15),
          HomeProfile(),
          SizedBox(height: 15),
          Menu(),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle("Menu"),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ListMenu(
                "Visits",
                Icon(Icons.directions_run, size: 17),
                128,
                () {
                  Get.toNamed(Routes.VISIT);
                },
              ),
              ListMenu(
                "CallSheet",
                Icon(Icons.support_agent, size: 17),
                79,
                () {},
              ),
              ListMenu(
                "Customers",
                Icon(Icons.handshake_rounded, size: 17),
                387,
                () {},
              ),
              ListMenu(
                "Group",
                Icon(Icons.groups, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Users",
                Icon(Icons.supervisor_account_sharp, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Branches",
                Icon(Icons.home_work_rounded, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Permissions",
                Icon(Icons.vpn_lock_outlined, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Role Profiles",
                Icon(Icons.rule_folder, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Role List",
                Icon(Icons.rule, size: 17),
                128,
                () {},
              ),
              ListMenu(
                "Devices",
                Icon(Icons.developer_mode_rounded, size: 20),
                128,
                () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListMenu extends StatelessWidget {
  late String title;
  late Icon icon;
  late int count;
  late Function onPressed;

  ListMenu(this.title, this.icon, this.count, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        width: 135,
        height: 130,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color.fromARGB(255, 224, 221, 221),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    "$title",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "$count",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
