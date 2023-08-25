import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';

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
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(30)),
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
                              Icons.alt_route,
                              size: 17,
                            ),
                            Text(
                              'Premium Status',
                              style: Styles.headLineStyle3,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(80)),
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
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(5)),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15),
                        vertical: AppLayout.getHeight(15)),
                    height: AppLayout.getHeight(100),
                    // width: size.width * 0.40,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12))),
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
                          border:
                              Border.all(width: 18, color: Colors.lightBlue),
                          shape: BoxShape.circle,
                          color: Colors.transparent),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
