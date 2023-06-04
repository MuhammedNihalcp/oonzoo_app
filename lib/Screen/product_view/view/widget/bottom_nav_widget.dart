import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: double.infinity,
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * 0.4, height * 0.07),
              maximumSize: Size.fromHeight(height * 0.08),
              backgroundColor: buttoncolor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Get.snackbar(
                'Added',
                "Cart Added Succesfully",
                colorText: Colors.green,
                backgroundColor: backgroundColor,
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: colorBlack,
            ),
            label: const Text(
              'Add to Cart',
              style: TextStyle(
                color: colorBlack,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * 0.4, height * 0.07),
              maximumSize: Size.fromHeight(height * 0.1),
              backgroundColor: buttoncolor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            
            child: const Text(
              'BuyNow',
              style: TextStyle(
                color: colorBlack,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
