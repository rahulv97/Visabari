import 'package:dear_jobs/views/appliedjobs/appliedjobs.dart';
import 'package:dear_jobs/views/bookmark/bookmark.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/drawer/drawerpage.dart';
import 'package:dear_jobs/views/home/homepage.dart';
import 'package:dear_jobs/views/message/messagepage.dart';
import 'package:dear_jobs/views/profile/showprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavbarScreen extends StatefulWidget {
  final token;
  const BottomNavbarScreen({Key? key, this.token}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int selectindex = 0;

  final screens = [
    HomePage(token: token1),
    const BookmarScreen(),
    const AppliedJobsScreen(),
    const MessageScreen(),
    const ShowProfile(),
  ];

  static var token1;

  @override
  void initState() {
    super.initState();
    token1 = widget.token;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: screens[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: downColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: grey,
          currentIndex: selectindex,
          iconSize: 25,
          onTap: (index) => setState(() => selectindex = index),
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  FontAwesomeIcons.houseChimney,
                  size: 20,
                ),
                icon: Icon(
                  FontAwesomeIcons.houseChimney,
                  size: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.bookmark,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.briefcase,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                ),
                label: ''),
          ]),
    );
  }
}
