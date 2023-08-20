import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/screens/hotel_view.dart';
import 'package:tickets_app/screens/tickets_view.dart';
import 'package:tickets_app/utils/app_info_list.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';
import '../widgets/double_text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        'Humble',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: AppLayout.getHeight(50),
                    width: AppLayout.getWidth(50),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/gh.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(12),
                    vertical: AppLayout.getHeight(12)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: Colors.white),
                child: Center(
                  child: Row(
                    children: [
                      const Icon(FluentIcons.search_24_regular),
                      Gap(AppLayout.getHeight(8)),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              const DoubleText(
                  bigText: 'Upcoming Flights', smallText: 'View all'),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
          child: Row(children: [
            ...ticketList
                .map((singleTicket) => TicketView(ticket: singleTicket))
                .toList(),
          ]),
        ),
        Gap(AppLayout.getHeight(10)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          child: const DoubleText(bigText: 'Hotels', smallText: 'View all'),
        ),
        const Gap(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
          child: Row(children: [
            ...hotelList
                .map((singleHotel) => HotelView(hotel: singleHotel))
                .toList(),
          ]),
        ),
        const Gap(20)
      ]),
    );
  }
}
