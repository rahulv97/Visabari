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
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
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
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(bottom: 25),
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
                            child: Form(
                              key: _formKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  const SizedBox(height: 30),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                      suffixIcon: Icon(
                                        Icons.email,
                                        color: grey,
                                      ),
                                    ),
                                    validator: (email) {
                                      if (email == null || email.isEmpty) {
                                        return 'Please enter email';
                                      }
                                      if (!RegExp(
                                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]+.com")
                                          .hasMatch(email)) {
                                        return 'Please enter valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 50),
                                ],
                              ),
                            ),
                          ),
                          Container(
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
                                  if (_formKey.currentState!.validate()) {
                                    Get.off(
                                        () => const ConfirmPasswordScreen());
                                  }
                                },
                                icon: const Icon(Icons.arrow_forward),
                                iconSize: 40,
                                color: white,
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
