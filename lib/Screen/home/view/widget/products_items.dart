import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import '../../../product_view/view/product_view_page.dart';
import '../../controller/home_controller.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    super.key,
    required this.height,
    required this.width,
    required this.homecontroller,
  });

  final double height;
  final double width;
  final HomeController homecontroller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (BuildContext ctx, int index) {
        return SizedBox(
          // width: width * 0.1,
          // color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => ProductViewScreen(
                            height: height,
                            width: width,
                            productImage: homecontroller.productImages[index],
                            productName: homecontroller.productName[index],
                            productPrice: homecontroller.productPrice[index],
                            homeController: homecontroller,
                          ),
                        );
                      },
                      child: Container(
                        width: width * 0.5,
                        height: height * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorWhite,
                          image: DecorationImage(
                            image: NetworkImage(
                              homecontroller.productImages[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: colorBlack,
                        ),
                      ),
                    ),
                  ],
                ),
                kheight10,
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: double.parse("4.3"),
                      itemSize: 15,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (startRating) {
                        log(startRating.toString());
                      },
                    ),
                  ],
                ),
                Text(
                  homecontroller.productName[index],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: colorWhite,
                  ),
                ),
                kheight10,
                Row(
                  children: [
                    Text(
                      "₹ ${homecontroller.productPrice[index]}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: colorWhite,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: homecontroller.productImages.length,
    );
  }
}
