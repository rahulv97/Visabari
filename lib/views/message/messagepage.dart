import 'package:dear_jobs/model/messagepagemodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/message/chatscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'MESSAGES',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemCount: messageContent.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => ChatScreen(
                      name: messageContent[index].name.toString(),
                    ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 5),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Image(
                        image:
                            AssetImage(messageContent[index].image.toString()),
                        height: 60,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                messageContent[index].name.toString(),
                                style: TextDesign().headingtext,
                              ),
                              const SizedBox(width: 120),
                              Text(
                                '${messageContent[index].time}' ' pm',
                                style: TextDesign().lighttext,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 210,
                            child: Text(
                              messageContent[index].message.toString(),
                              style: TextDesign().smallgreytext,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
