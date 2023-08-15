import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 50, spreadRadius: 5)
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/hotel1.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          const Gap(10),
          Text(
            'Open Space',
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            'London',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '40/Night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
