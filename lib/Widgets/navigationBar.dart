import 'package:al_mareef/Views/UploadStatistics.dart';
import 'package:al_mareef/Views/assignments.dart';
import 'package:al_mareef/Views/calendar.dart';
import 'package:al_mareef/Views/languageSelector.dart';
import 'package:al_mareef/Views/myPayment.dart';
import 'package:al_mareef/Views/studentMenu.dart';
import 'package:al_mareef/Views/studentPage.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class navigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBar();
  }
}

class NavigationBar extends State<navigationBar> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedTab = 2;
  final _pageOptions = [

    myPayments(),
    calenderScreen(),
    studentPage(),
    assignmentsScreen(),
    studentMenu(),
  ];
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      extendBody: true,
      // backgroundColor: Colors.transparent,
        key: _scaffoldKey,

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(

            backgroundColor: basicColor,
            showSelectedLabels: true,
            iconSize: 20,
            selectedFontSize: 14,
            unselectedFontSize: 12,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30,
            elevation: 2,
            onTap: (int index) {
              setState(() {
                _selectedTab = index;
              });
            },


            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: 'Payment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Calender',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Assignment',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),





            ],
          ),
        ),
      );

  }
}