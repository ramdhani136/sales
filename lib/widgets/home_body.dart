import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
              ListMenu(),
              ListMenu(),
              ListMenu(),
              ListMenu(),
            ],
          ),
        ),
      ],
    );
  }
}

class ListMenu extends StatelessWidget {
  const ListMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tes');
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: 120,
        height: 120,
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
      ),
    );
  }
}
