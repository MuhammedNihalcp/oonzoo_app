import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.width,
    required this.height,
    required this.productImage,
  });

  final double width;
  final double height;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: colorWhite,
          width: width,
          height: height * 0.5,
          child: Image.network(
            productImage,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: colorBlack,
          ),
        ),
        Positioned(
          right: 5,
          top: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 40,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
