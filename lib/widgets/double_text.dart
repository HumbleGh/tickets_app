import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            // print('you are tapped');
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.textColor)),
        )
      ],
    );
  }
}
