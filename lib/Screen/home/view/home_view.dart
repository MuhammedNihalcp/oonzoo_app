import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oonzoo_app/Screen/home/controller/home_controller.dart';
import 'package:oonzoo_app/Screen/home/view/widget/category_items.dart';
import 'package:oonzoo_app/Screen/home/view/widget/category_text.dart';
import 'package:oonzoo_app/Screen/home/view/widget/home_carousel.dart';
import 'package:oonzoo_app/Screen/home/view/widget/products_items.dart';
import 'package:oonzoo_app/Screen/home/view/widget/sign_out_dialog.dart';

import 'package:oonzoo_app/core/colors.dart';
import 'package:oonzoo_app/core/style.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  final height = Get.height;
  final width = Get.width;
  final homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: buttoncolor,
        title: const Text(
          'OONZOO',
          style: TextStyle(
            color: colorBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              SignOutDialog().signOutDialog(homecontroller);
            },
            icon: const Icon(
              Icons.logout_rounded,
              color: colorBlack,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder(
            init: homecontroller,
            builder: (controller) {
              return ListView(
                children: [
                  HomeCarousel(
                    height: height,
                    homecontroller: homecontroller,
                    width: width,
                  ),
                  kheight10,
                  const CategoryText(),
                  CategoryItems(
                    height: height,
                    homecontroller: homecontroller,
                  ),
                  kheight10,
                  Row(
                    children: const [
                      Text(
                        'Featured',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: colorWhite,
                        ),
                      ),
                    ],
                  ),
                  kheight10,
                  ProductItems(
                    height: height,
                    width: width,
                    homecontroller: homecontroller,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
