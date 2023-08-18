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
            Gap(AppLayout.getHeight(25)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arival'),
            Gap(AppLayout.getHeight(25)),
            const DoubleText(bigText: 'Upcoming Flights', smallText: 'View all')
          ],
        ));
  }
}
