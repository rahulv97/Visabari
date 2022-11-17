import 'package:dear_jobs/views/auth/login.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmPasswordScreen extends StatefulWidget {
  const ConfirmPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmPasswordScreen> createState() => _ConfirmPasswordScreenState();
}

class _ConfirmPasswordScreenState extends State<ConfirmPasswordScreen> {
  bool isRember = false;
  bool isPasswordVisible = true;
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController pswdController = TextEditingController();
  TextEditingController cnfrmpswdController = TextEditingController();
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
                            margin: EdgeInsets.only(bottom: 30),
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
                              key: _formkey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                children: [
                                  const SizedBox(height: 40),
                                  TextFormField(
                                    controller: pswdController,
                                    obscureText: isPasswordVisible,
                                    decoration: const InputDecoration(
                                      hintText: 'Password',
                                    ),
                                    validator: (password) {
                                      if (password == null ||
                                          password.isEmpty) {
                                        return 'Please enter password';
                                      }
                                      if (!RegExp('(?=.*?[A-Z])')
                                          .hasMatch(password)) {
                                        return 'enter 1 capital letter';
                                      }
                                      if (!RegExp('(?=.*?[a-z])')
                                          .hasMatch(password)) {
                                        return 'enter small letter';
                                      }
                                      if (!RegExp('^(?=.*?[0-9])')
                                          .hasMatch(password)) {
                                        return 'enter 1 numeric digit';
                                      }
                                      if (!RegExp('^(?=.*?[!@#\$&*~])')
                                          .hasMatch(password)) {
                                        return 'special character also necessary';
                                      }
                                      if (!RegExp('^.{8,}')
                                          .hasMatch(password)) {
                                        return 'password length should be 8 character ';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    obscureText: isPasswordVisible,
                                    controller: cnfrmpswdController,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm Password',
                                      suffixIcon: IconButton(
                                        onPressed: () => setState(() =>
                                            isPasswordVisible =
                                                !isPasswordVisible),
                                        icon: isPasswordVisible
                                            ? const Icon(Icons.visibility_off)
                                            : const Icon(Icons.visibility),
                                      ),
                                    ),
                                    validator: (cnfrmpswd) {
                                      if (cnfrmpswd == null ||
                                          cnfrmpswd.isEmpty) {
                                        return 'Please enter password';
                                      }
                                      if (cnfrmpswdController.text !=
                                          pswdController.text) {
                                        return 'Password not same';
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
                                  if (_formkey.currentState!.validate()) {
                                    Get.off(() => const LoginScreen());
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
