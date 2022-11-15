import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'INVITE FRIEND',
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
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              "Share With Friends",
              style: TextStyle(
                fontSize: 26,
                color: blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
                "Sed tortor ante, this is vestibulum non crisus id,porta imperdiet purus.",
                textAlign: TextAlign.center,
                style: TextDesign().lighttext),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/shareimage.png"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      upColor,
                      downColor,
                    ]),
              ),
              child: const Center(
                child: Text(
                  "INVITE NOW",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
