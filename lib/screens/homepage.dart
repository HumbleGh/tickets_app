import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/screens/hotel_view.dart';
import 'package:tickets_app/screens/tickets_view.dart';
import 'package:tickets_app/utils/app_info_list.dart';
import 'package:tickets_app/utils/app_style.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/gh.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Row(
                    children: [
                      const Icon(FluentIcons.search_24_regular),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flight',
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      // print('you are tapped');
                    },
                    child: Text('View all',
                        style:
                            Styles.textStyle.copyWith(color: Styles.textColor)),
                  )
                ],
              )
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(children: [
            TicketView(),
            TicketView(),
            TicketView(),
            TicketView(),
          ]),
        ),
        const Gap(10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hotels',
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: () {
                  // print('you are tapped');
                },
                child: Text('View all',
                    style: Styles.textStyle.copyWith(color: Styles.textColor)),
              )
            ],
          ),
        ),
        const Gap(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
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
