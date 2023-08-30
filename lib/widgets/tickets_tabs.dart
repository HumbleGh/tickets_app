import 'package:flutter/material.dart';
import 'package:tickets_app/utils/app_layout.dart';
import 'package:tickets_app/utils/app_style.dart';

class AppTicketTabs extends StatefulWidget {
  final String firstText;
  final String secondText;
  const AppTicketTabs(
      {super.key, required this.firstText, required this.secondText});

  @override
  State<AppTicketTabs> createState() => _AppTicketTabsState();
}

class _AppTicketTabsState extends State<AppTicketTabs> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
          padding: EdgeInsets.all(AppLayout.getHeight(6)),
          decoration: BoxDecoration(
              color: const Color(0xFFF4F6FD),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(20)))),
                child: Center(
                    child: Text(widget.firstText,
                        style: Styles.headLineStyle4
                            .copyWith(color: const Color(0xFF3b3b3b)))),
              ),
              Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(20)))),
                child: Center(
                    child: Text(
                  widget.secondText,
                  style: Styles.headLineStyle4
                      .copyWith(color: const Color(0xFF3b3b3b)),
                )),
              )
            ],
          )),
    );
  }
}
