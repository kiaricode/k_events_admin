import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constants/utils.dart';

class TableBasicsExample extends StatefulWidget {
  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.now().add(const Duration(days: 1825)),
      focusedDay: DateTime.now(),
      eventLoader: (date) {
        var eventsDay = [10, 10, 15, 18, 24];
        for (var day in eventsDay) {
          if (date.day == day) {
            return [true];
          }
        }
        return [];
      },
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          // Call `setState()` when updating calendar format
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        // No need to call `setState()` here
        _focusedDay = focusedDay;
      },
      calendarStyle: const CalendarStyle(
        canMarkersOverflow: true,
        markerSize: 10,
        markerMargin: EdgeInsets.only(top: 2, bottom: 10),
        markerDecoration: BoxDecoration(
          color: AppColors.activeDark2,
          shape: BoxShape.circle,
        ),
        weekendTextStyle: TextStyle(color: Colors.red),
      ),
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (context, day, focusedDay) => Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 34,
          height: 34,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.activeDark2,
            borderRadius: BorderRadius.circular(20),
          ),
          child: CustomText(
            text: day.day.toString(),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
