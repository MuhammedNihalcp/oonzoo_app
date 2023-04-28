
import 'package:flutter/material.dart';

import 'package:oonzoo_app/Screen/home/controller/home_controller.dart';
import 'package:oonzoo_app/Screen/product_view/view/widget/bottom_nav_widget.dart';
import 'package:oonzoo_app/Screen/product_view/view/widget/detail_text_widget.dart';
import 'package:oonzoo_app/Screen/product_view/view/widget/product_image_widget.dart';
import 'package:oonzoo_app/core/colors.dart';
import 'package:oonzoo_app/core/style.dart';

// ignore: must_be_immutable
class ProductViewScreen extends StatelessWidget {
  ProductViewScreen({
    super.key,
    required this.height,
    required this.width,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.homeController,
  });
  final double height;
  final double width;
  String productImage;
  String productName;
  double productPrice;
  HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              ProductImageWidget(
                width: width,
                height: height,
                productImage: productImage,
              ),
              kheight20,
              DetailTextWidget(
                productName: productName,
                productPrice: productPrice,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavWidget(
        height: height,
        width: width,
      ),
    );
  }
}
