import 'package:dear_jobs/model/notificationmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'NOTIFICATION',
          style: TextDesign().appbartext,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [upColor, downColor],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: white,
            iconSize: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: notificationContent.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          CupertinoIcons.bell,
                          size: 20,
                          color: blue,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  notificationContent[index]
                                      .companyname
                                      .toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextDesign().headingtext,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                notificationContent[index].time.toString(),
                                style: TextDesign().smallgreytext,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              notificationContent[index].description.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextDesign().notificationsubtext,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
