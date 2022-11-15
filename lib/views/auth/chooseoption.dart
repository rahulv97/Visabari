import 'package:dear_jobs/views/auth/login.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseAuthOption extends StatefulWidget {
  const ChooseAuthOption({Key? key}) : super(key: key);

  @override
  State<ChooseAuthOption> createState() => _ChooseAuthOptionState();
}

class _ChooseAuthOptionState extends State<ChooseAuthOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 50,
        title: Text(
          'CHOOSE SIGN IN OPTION',
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
          GestureDetector(
            onTap: () {
              Get.to(() => const LoginScreen());
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Text(
                'Log In',
                style: TextDesign().appbartext,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Center(
            child: Image(
              image: AssetImage("assets/colorlogo.png"),
              height: 100,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height / 2.6,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/chooseoption.png"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: red,
              ),
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Login with Google',
                    style: TextDesign().appbartext,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 50,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: white,
                      ),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Image(
                              image: AssetImage("assets/google.png"),
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: blue,
              ),
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Login with Linkedin',
                    style: TextDesign().appbartext,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 50,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: white,
                      ),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Image(
                              image: AssetImage("assets/linkedin.png"),
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
