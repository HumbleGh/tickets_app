import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class RowColumnText extends StatelessWidget {
  final String firstLeftText;
  final String secondLeftText;
  final String firstRightText;
  final String secondRightText;

  const RowColumnText(
      {super.key,
      required this.firstLeftText,
      required this.firstRightText,
      required this.secondLeftText,
      required this.secondRightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstLeftText,
                style: Styles.headLineStyle2,
              ),
              Text(
                secondLeftText,
                style: Styles.headLineStyle3.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                firstRightText,
                style: Styles.headLineStyle2,
              ),
              Text(
                secondRightText,
                style: Styles.headLineStyle3.copyWith(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
