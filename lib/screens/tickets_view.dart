import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';
import 'package:tickets_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            Showing the blue part of the ticket
            */
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white)),
                    Expanded(child: Container()),
                    const ThickContainer(),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              // print('The width is ${constraints.constrainWidth()}');
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 8).floor(),
                                    (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: const DecoratedBox(
                                              decoration: BoxDecoration(
                                            color: Colors.white,
                                          )),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
                    const ThickContainer(),
                    Expanded(child: Container()),
                    Text(ticket['to']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white))
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['from']['name'],
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      ticket['flying_time'],
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ]),
            ),

            /*
            Showung the orange part of the ticket
            */

            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          // print('The width is ${constraints.constrainWidth()}');
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      height: AppLayout.getHeight(5),
                                      width: AppLayout.getWidth(1),
                                      child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      )),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(16),
                  top: AppLayout.getWidth(10),
                  right: AppLayout.getHeight(16),
                  bottom: AppLayout.getWidth(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Date',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Number',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
