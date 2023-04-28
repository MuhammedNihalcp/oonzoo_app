import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../controller/home_controller.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
    required this.height,
    required this.homecontroller,
  });

  final double height;
  final HomeController homecontroller;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: height * 0.14,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          homecontroller.categoryImages.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    homecontroller.categoryImages[index],
                  ),
                  radius: 30,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  homecontroller.categoryName[index],
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
