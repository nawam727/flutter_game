import 'package:flutter/material.dart';
import 'package:flutter_application_1/pgs/club.dart';
import 'package:flutter_application_1/pgs/home_pg.dart';
import 'package:flutter_application_1/pgs/req.dart';
import 'package:flutter_application_1/pgs/reserve.dart';
import 'package:flutter_application_1/pgs/schedule.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState( () {
            currentPageIndex = index;
          }
          );
        },

        indicatorColor: Colors.blue[800],
        selectedIndex: currentPageIndex,

        destinations: const <Widget>[

          NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people_alt_outlined),
            label: 'Club',
          ),

          NavigationDestination(
            selectedIcon: Icon(Icons.domain_verification),
            icon: Icon(Icons.domain_verification_outlined),
            label: 'Schedule',
          ),

          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Reservation',
          ),

          NavigationDestination(
            selectedIcon: Icon(Icons.feedback),
            icon: Icon(Icons.feedback_outlined),
            label: 'Request',
          ),
          
        ],
      ),

      body: <Widget>[

        Container(
          child: const ClubPage()
        ),

        Container(
          child: const SchedulePage()
        ),

        Container(
          child: HomePage(),
        ),

        Container(
          child: const ReservationPage()
        ),

        Container(
          child: const RequestPage()
        ),

      ]
      [currentPageIndex],

    );
  }
}
