import 'package:dear_jobs/model/chatmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final name;
  const ChatScreen({Key? key, this.name}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.name,
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: white,
            iconSize: 30,
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 80),
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent.toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Container(
          //     padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          //     height: 60,
          //     width: double.infinity,
          //     color: Colors.white,
          //     child: Row(
          //       children: <Widget>[
          //         // GestureDetector(
          //         //   onTap: () {},
          //         //   child: Container(
          //         //     height: 30,
          //         //     width: 30,
          //         //     decoration: BoxDecoration(
          //         //       color: Colors.lightBlue,
          //         //       borderRadius: BorderRadius.circular(30),
          //         //     ),
          //         //     child: const Icon(
          //         //       Icons.add,
          //         //       color: Colors.white,
          //         //       size: 20,
          //         //     ),
          //         //   ),
          //         // ),
          //         // const SizedBox(width: 15),
          //         const Expanded(
          //           child: TextField(
          //             decoration: InputDecoration(
          //                 hintText: "Write message...",
          //                 hintStyle: TextStyle(color: Colors.black54),
          //                 border: InputBorder.none),
          //           ),
          //         ),
          //         const SizedBox(width: 15),
          //         FloatingActionButton(
          //           onPressed: () {},
          //           backgroundColor: Colors.blue,
          //           elevation: 0,
          //           child: const Icon(
          //             Icons.send,
          //             color: Colors.white,
          //             size: 18,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
