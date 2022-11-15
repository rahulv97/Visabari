import 'package:dear_jobs/views/bookmark/bookmark.dart';
import 'package:dear_jobs/views/bottomnavbar/bottomnavbar.dart';
import 'package:dear_jobs/views/category/categorypage.dart';
import 'package:dear_jobs/views/companies/companies.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/featuredjobs/featuredjobs.dart';
import 'package:dear_jobs/views/helpers/dialogbox.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/invite/invitepage.dart';
import 'package:dear_jobs/views/newjobs/newjobs.dart';
import 'package:dear_jobs/views/notification/notification.dart';
import 'package:dear_jobs/views/profile/showprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DrawerPageScreen extends StatefulWidget {
  const DrawerPageScreen({Key? key}) : super(key: key);

  @override
  State<DrawerPageScreen> createState() => _DrawerPageScreenState();
}

class _DrawerPageScreenState extends State<DrawerPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [upColor, downColor],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/dp.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Mark Gutierrez',
                          style: TextDesign().appbartext,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'markgutierrez@gmail.com',
                          style: TextDesign().emailtext,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.person_circle,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'View Profile',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const ShowProfile());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: downColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            FontAwesomeIcons.networkWired,
                            size: 15,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Categories',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const CategoryScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.bell,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Notification',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const NotificationScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: green.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.building_2_fill,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Companies',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const CompanyScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: brown.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.building_2_fill,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Bookmark',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const BookmarScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: upColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.briefcase,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'View Jobs',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const NewJobsScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.briefcase,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Featured Jobs',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const FeaturedJobScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: blue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.person_badge_plus,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Invite Firend',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(() => const InviteScreen());
                    }),
                CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: downColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            CupertinoIcons.heart,
                            size: 20,
                            color: white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Log Out',
                          style: TextDesign().drawericontext,
                        ),
                      ],
                    ),
                    onPressed: () => MyDialogBox().dialog(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
