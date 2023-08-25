import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/screens/tickets_view.dart';
import 'package:tickets_app/utils/app_info_list.dart';
import 'package:tickets_app/widgets/ticket_widget.dart';
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
                  TicketMain(isColor: true, ticket: ticketList[0]),
                  Gap(AppLayout.getHeight(20)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TicketView(ticket: ticketList[0]),
                  )
                ]),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )),
              child: CircleAvatar(
                maxRadius: AppLayout.getHeight(40),
              ),
            )
          ],
        ));
  }
}
