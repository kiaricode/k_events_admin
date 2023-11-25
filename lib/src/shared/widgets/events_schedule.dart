import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

import 'custom_text.dart';
import 'example.dart';

class EventsSchedule extends StatelessWidget {
  const EventsSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var currentDate = DateTime.now();
    return Row(
      children: [
        Container(
          width: 2,
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          // height: size.height * 0.88,
          color: AppColors.lightGrey,
        ),
        Container(
          width: 350,
          padding: const EdgeInsets.only(top: 48, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Cronograma de Eventos",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 30),
              // CalendarDatePicker(
              //   initialDate: DateTime.now(),
              //   firstDate: DateTime.now(),
              //   lastDate: DateTime.now().add(const Duration(days: 1825)),
              //   onDateChanged: (date) {},
              // ),
              SizedBox(
                width: 322,
                height: size.height * 0.8,
                child: const TableBasicsExample(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Calendario extends StatelessWidget {
  const Calendario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.now().add(const Duration(days: 1825)),
      focusedDay: DateTime.now(),
    );
  }
}
