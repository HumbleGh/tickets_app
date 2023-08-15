import 'package:flutter/material.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                image: const DecorationImage(
                    image: AssetImage('assets/images/hotel1.jpg'))),
          )
        ],
      ),
    );
  }
}
