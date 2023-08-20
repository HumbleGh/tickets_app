import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/widgets/icon_text_widget.dart';
import '../utils/app_style.dart';
import '../widgets/double_text.dart';

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
            Text(
              'What are\n you looking for?',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getHeight(35)),
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
                        child: Center(
                            child: Text('Airline Tickets',
                                style: Styles.headLineStyle4
                                    .copyWith(color: const Color(0xFF3b3b3b)))),
                      ),
                      Container(
                        width: size.width * 0.44,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right:
                                    Radius.circular(AppLayout.getHeight(20)))),
                        child: Center(
                            child: Text(
                          'Hotels',
                          style: Styles.headLineStyle4
                              .copyWith(color: const Color(0xFF3b3b3b)),
                        )),
                      )
                    ],
                  )),
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: 'Departure'),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arival'),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  color: Colors.blue),
              child: Center(
                child: Text(
                  'Find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const DoubleText(
                bigText: 'Upcoming Flights', smallText: 'View all'),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 10,
                        )
                      ],
                      color: Colors.white),
                  padding: EdgeInsets.all(AppLayout.getHeight(12)),
                  height: AppLayout.getHeight(400),
                  width: size.width * 0.45,
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(6)),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/hotel1.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                        '20% Discount on all products, we have reduced to clear. Yeah, this is being done intentional for people to come and buy.',
                        style: Styles.headLineStyle3,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(15),
                              vertical: AppLayout.getHeight(15)),
                          height: AppLayout.getHeight(190),
                          width: size.width * 0.40,
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12))),
                          child: Text(
                              'Hey! Chale whatever you want to say biaa, edey your there man. Yeah!, I mean it ',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 18, color: Colors.lightBlue),
                                shape: BoxShape.circle,
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15)),
                      height: AppLayout.getHeight(190),
                      width: size.width * 0.40,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12))),
                      child: Text(
                          'Hey! Chale whatever you want to say biaa, edey your there man. Yeah!, I mean it ',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
