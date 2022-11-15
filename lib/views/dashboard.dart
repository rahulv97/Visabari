import 'package:dear_jobs/views/bottomnavbar/bottomnavbar.dart';
import 'package:dear_jobs/views/drawer/drawerpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) => const ZoomDrawer(
        menuScreen: DrawerPageScreen(),
        mainScreen: BottomNavbarScreen(),
        angle: 0.0,
        slideWidth: 250,
      );
}
