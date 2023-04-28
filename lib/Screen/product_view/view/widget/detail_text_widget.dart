import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import 'offer_text.dart';

class DetailTextWidget extends StatelessWidget {
  const DetailTextWidget({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: '4.3    ',
                style: const TextStyle(color: colorWhite),
                children: [
                  WidgetSpan(
                    child: RatingBar.builder(
                      initialRating: double.parse('4.3'),
                      itemSize: 15,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (startRating) {
                        log(startRating.toString());
                      },
                    ),
                  )
                ],
              ),
            ),
            const Text(
              'In Stock',
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        kheight10,
        ReadMoreText(
          productName,
          style: const TextStyle(
            color: colorWhite,
          ),
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Show more',
          trimExpandedText: ' Show less',
          moreStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: readmoreColor,
          ),
          lessStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: readmoreColor,
          ),
        ),
        kheight10,
        Row(
          children: [
            Text(
              '₹ $productPrice',
              style: const TextStyle(
                color: colorWhite,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        kheight10,
        Row(
          children: const [
            Text(
              'Available Offers',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: colorWhite,
              ),
            ),
          ],
        ),
        kheight10,
        Row(
          children: [
            OfferTextWidget().offerText(' Bank offer starts at 5% cashback'),
          ],
        ),
        OfferTextWidget()
            .offerText(' Cash On Delivery Free up to all products on My Shop'),
        Row(
          children: [
            OfferTextWidget().offerText(' No cost EMI/coupons up to 10% Off'),
          ],
        ),
      ],
    );
  }
}
