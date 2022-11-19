import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/tabviewscree/tabviewbarsecond.dart';
import 'package:dear_jobs/views/tabviewscree/tabviewscreenfirst.dart';
import 'package:flutter/material.dart';

class TabViewWidget extends StatefulWidget {
  const TabViewWidget({Key? key}) : super(key: key);

  @override
  State<TabViewWidget> createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.70,
            color: white,
            child: TabBar(
              unselectedLabelColor: black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      upColor,
                      downColor,
                    ]),
              ),
              tabs: const [
                Text("DESCRIPTION"),
                Text("REVIEWS"),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.5,
            width: double.infinity,
            child: const TabBarView(
              children: [
                TabViewScreenFirst(),
                TabViewScreenSecond(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
