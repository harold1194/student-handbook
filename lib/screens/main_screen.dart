// ignore_for_file: unused_field, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:student_handbook/screens/calendar_screen.dart';
import 'package:student_handbook/screens/details_screen.dart';
import 'package:student_handbook/screens/school_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DetailsScreen(),
    CalendarScreen(),
    SchoolScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list_alt_rounded),
      //       label: 'Task',
      //     ),
      //   ],
      //   backgroundColor: Colors.deepOrange,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.amber,
        color: Colors.deepOrange,
        items: <Widget>[
          // ignore: prefer_const_constructors
          Icon(Icons.home, color: Colors.white, size: 30),
          // ignore: prefer_const_constructors
          Icon(Icons.list_alt_rounded, color: Colors.white, size: 30),
          Icon(Icons.calendar_month_rounded, color: Colors.white, size: 30),
          Icon(Icons.school, color: Colors.white, size: 30),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
