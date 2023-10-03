import 'package:flutter/material.dart';
import 'package:green_connect/app_color.dart';
import 'package:green_connect/calendar/calendar_class_tab.dart';
import 'package:green_connect/calendar/calendar_events_tab.dart';
import 'package:green_connect/calendar/calendar_remind_tab.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class CalendarMain extends StatefulWidget {
  const CalendarMain({super.key});

  @override
  State<CalendarMain> createState() => _CalendarMainState();
}

class _CalendarMainState extends State<CalendarMain> {
  DateTime selectedDate = DateTime.now();
  int selectedDay = DateTime.now().day;
  ScrollController scrollController = ScrollController();
  int selectedTabIndex = 0; // 0 for Class tab, 1 for Events tab

  void changeMonth(int increment) {
    setState(() {
      selectedDate = DateTime(
          selectedDate.year, selectedDate.month + increment, selectedDate.day);
      selectedDay =
          DateTime(selectedDate.year, selectedDate.month, selectedDay).day;
    });
  }

  void changeDay(int day) {
    setState(() {
      int maxDays = DateTime(selectedDate.year, selectedDate.month + 1, 0).day;
      if (day < 1 || day > maxDays) {
        // Change to the next month
        int increment = day > maxDays ? 1 : -1;
        selectedDate = DateTime(selectedDate.year,
            selectedDate.month + increment, selectedDate.day);
        selectedDay = DateTime(selectedDate.year, selectedDate.month, 1).day;
        scrollController.jumpTo(0);
      } else {
        selectedDay = day;
        double offset = (day - 3) * 70.0; // Adjust the value as per your design
        scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void selectTab(int tabIndex) {
    setState(() {
      selectedTabIndex = tabIndex;
    });
  }

  List<Widget> buildDayContainers() {
    int maxDays = DateTime(selectedDate.year, selectedDate.month + 1, 0).day;
    int startDay = selectedDay - 2;
    int endDay = selectedDay + 2;

    if (startDay < 1) {
      endDay += (1 - startDay);
      startDay = 1;
    }

    if (endDay > maxDays) {
      startDay -= (endDay - maxDays);
      endDay = maxDays;
    }

    List<Widget> containers = [];
    for (int day = startDay; day <= endDay; day++) {
      DateTime date = DateTime(selectedDate.year, selectedDate.month, day);
      String dayName = DateFormat.E().format(date).substring(0, 3);

      containers.add(
        GestureDetector(
          onTap: () => changeDay(day),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: selectedDay == day ? Theme.of(context).primaryColor : null,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dayName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: selectedDay == day ? Colors.white : null,
                  ),
                ),
                Text(
                  '$day',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: selectedDay == day ? Colors.white : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return containers;
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String monthName = DateFormat.MMMM().format(selectedDate);

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: appPagePadding,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: HexColor("#D4E8DD"),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => changeMonth(-1),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      '$monthName, ${selectedDate.year}',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () => changeMonth(1),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Day select row
              SingleChildScrollView(
                //scrollDirection: Axis.horizontal,
                controller: scrollController,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => changeDay(selectedDay - 1),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: HexColor("#D9D9D9"),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    ...buildDayContainers(),
                    GestureDetector(
                      onTap: () => changeDay(selectedDay + 1),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: HexColor("#D9D9D9"),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // TabBar
              const TabBar(
                indicatorWeight: 1,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu_book_rounded,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Class',
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Events',
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.alarm,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Remind',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // TabBarView
              const Expanded(
                child: TabBarView(
                  children: [
                    CalendarClassTab(),
                    CalendarEventsTab(),
                    CalendarRemindTab()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
