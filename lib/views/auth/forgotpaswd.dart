import 'package:dear_jobs/views/auth/cnfrmpassword.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width,
                      color: downColor,
                      child: Column(
                        children: [
                          const SizedBox(height: 25),
                          const Center(
                            child: Image(
                              image: AssetImage("assets/logo.png"),
                              height: 100,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Forgot Password',
                            style: TextDesign().whiteboldtext,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 210, left: 20, right: 20),
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    suffixIcon: Icon(
                                      Icons.email,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: white,
                                      width: 3,
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          upColor,
                                          downColor,
                                        ]),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x29000000),
                                        offset: Offset(0, 5),
                                        blurRadius: 6,
                                      )
                                    ]),
                                child: IconButton(
                                  onPressed: () {
                                    Get.to(() => const ConfirmPasswordScreen());
                                  },
                                  icon: const Icon(Icons.arrow_forward),
                                  iconSize: 40,
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
