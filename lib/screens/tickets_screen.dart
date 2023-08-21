import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/screens/tickets_view.dart';
import 'package:tickets_app/utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../widgets/tickets_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(20)),
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Text(
                    'Tickets',
                    style: Styles.headLineStyle1
                        .copyWith(fontSize: AppLayout.getHeight(35)),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  const AppTicketTabs(
                      firstText: 'Upcoming', secondText: 'Previous'),
                  Gap(AppLayout.getHeight(25)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[0],
                      isColor: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'First Text',
                              style: Styles.headLineStyle3,
                            ),
                            Gap(AppLayout.getHeight(3)),
                            Text(
                              'Child text',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ]),
          ],
        ));
  }
}
