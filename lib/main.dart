import 'package:dear_jobs/views/auth/login.dart';
import 'package:dear_jobs/views/auth/signup.dart';
import 'package:dear_jobs/views/bottomnavbar/bottomnavbar.dart';
import 'package:dear_jobs/views/companies/companysinglepage.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/message/chatscreen.dart';
import 'package:dear_jobs/views/message/messagepage.dart';
import 'package:dear_jobs/views/newjobs/jobsingle.dart';
import 'package:dear_jobs/views/onboarding/onboarding_screen.dart';
import 'package:dear_jobs/views/profile/editprofile.dart';
import 'package:dear_jobs/views/profile/showprofile.dart';
import 'package:dear_jobs/widget/filterscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const OnBoardingScreen());
  }
}
