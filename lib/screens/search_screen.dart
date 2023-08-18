import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import '../utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Container(
              child: Text(
                'What are\n you looking for?',
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35)),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            FittedBox(
              child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(6)),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F6FD),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left:
                                    Radius.circular(AppLayout.getHeight(20)))),
                        child: const Center(child: Text('Airline Tickets')),
                      ),
                      Container(
                        width: size.width * 0.44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right:
                                    Radius.circular(AppLayout.getHeight(20)))),
                        child: const Center(child: Text('Hotels')),
                      )
                    ],
                  )),
            ),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(12),
                  horizontal: AppLayout.getHeight(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.flight_takeoff_rounded),
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    'Departure',
                    style: Styles.textStyle,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
