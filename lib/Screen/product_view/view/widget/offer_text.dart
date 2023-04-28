import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class OfferTextWidget {
  Widget offerText(String text) {
    return RichText(
      maxLines: 2,
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Icon(
              Icons.local_offer_rounded,
              color: Colors.green,
            ),
          ),
          TextSpan(
            text: text,
            style: const TextStyle(
              color: colorWhite,
            ),
          ),
        ],
      ),
    );
  }
}
