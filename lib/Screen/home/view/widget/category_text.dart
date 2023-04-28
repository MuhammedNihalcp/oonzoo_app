import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Category',
          style: TextStyle(
            color: colorWhite,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See All >',
            style: TextStyle(color: colorWhite),
          ),
        )
      ],
    );
  }
}
