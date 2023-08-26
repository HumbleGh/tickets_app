import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';
import 'package:tickets_app/widgets/row_column_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  // horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: AppLayout.getHeight(80),
                    width: AppLayout.getWidth(80),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/gh.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle1,
                      ),
                      Text(
                        'New-York',
                        style: Styles.headLineStyle4,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(6),
                            vertical: AppLayout.getHeight(2)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white70),
                        child: Row(
                          children: [
                            const Icon(
                              FluentIcons.shield_12_filled,
                              size: 17,
                            ),
                            Gap(AppLayout.getHeight(4)),
                            Text(
                              'Premium Status',
                              style: Styles.headLineStyle3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Edit',
                        style: Styles.textStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFF264CD2),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Positioned(
                  right: -40,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.blue,
                        border:
                            Border.all(width: 18, color: Colors.blueAccent)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(16),
                      vertical: AppLayout.getHeight(16)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: AppLayout.getHeight(25),
                        child: Icon(
                          FluentIcons.lightbulb_20_filled,
                          color: Colors.blue,
                          size: AppLayout.getHeight(27),
                        ),
                      ),
                      Gap(AppLayout.getHeight(8)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'ve got a new award',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'You have 150 flights in a year',
                            style: Styles.headLineStyle4.copyWith(
                                color: Colors.white.withOpacity(0.90)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Center(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                child: Text(
                  'Accumumlated Miles',
                  style: Styles.headLineStyle2,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(8)),
            Center(
              child: Text('192642',
                  style: Styles.textStyle
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 36)),
            ),
            Gap(AppLayout.getHeight(10)),
            Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(22)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle3.copyWith(color: Colors.grey),
                    ),
                    Text('25 August 2023',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.grey)),
                  ],
                )),
            Gap(AppLayout.getHeight(20)),
            const RowColumnText(
                firstLeftText: '29 097',
                firstRightText: 'Emirates Airline',
                secondLeftText: 'Miles',
                secondRightText: 'Received from'),
            const RowColumnText(
                firstLeftText: '39',
                firstRightText: 'Humbles Kitchen',
                secondLeftText: 'Miles',
                secondRightText: 'Received from'),
            const RowColumnText(
                firstLeftText: '54 980',
                firstRightText: 'New Townking',
                secondLeftText: 'Miles',
                secondRightText: 'Received from'),
            Gap(AppLayout.getHeight(30)),
            Center(
                child: Text(
              'How to get nore miles',
              style: Styles.headLineStyle3.copyWith(color: Colors.grey),
            )),
          ],
        ),
      ),
    );
  }
}
