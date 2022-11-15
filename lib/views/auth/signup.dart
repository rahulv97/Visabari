import 'package:dear_jobs/network/apiservice.dart';
import 'package:dear_jobs/views/auth/login.dart';
import 'package:dear_jobs/views/bottomnavbar/bottomnavbar.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isRember = false;
  bool isPasswordVisible = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    color: downColor,
                    child: Column(
                      children: [
                        const SizedBox(height: 35),
                        const Center(
                          child: Image(
                            image: AssetImage("assets/logo.png"),
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: "Welcome to ",
                            style: TextStyle(
                              color: white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Dear Job ',
                                style: TextDesign().whiteboldtext,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 185, left: 20, right: 20),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 30),
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
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: grey,
                                    ),
                                  ),
                                  validator: (username) {
                                    if (username!.isEmpty) {
                                      return 'enter username';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    hintText: 'Phone',
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: grey,
                                    ),
                                  ),
                                  validator: (phone) {
                                    if (phone!.isEmpty) {
                                      return 'enter phone number';
                                    }
                                    if (phone.length < 10) {
                                      return 'enter  10 digit';
                                    }
                                    if (phone.length != 10) {
                                      return 'enter  10 digit';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
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
                                const SizedBox(height: 20),
                                TextFormField(
                                  obscureText: isPasswordVisible,
                                  controller: pswdController,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    suffixIcon: IconButton(
                                      onPressed: () => setState(() =>
                                          isPasswordVisible =
                                              !isPasswordVisible),
                                      icon: isPasswordVisible
                                          ? const Icon(Icons.visibility_off)
                                          : const Icon(Icons.visibility),
                                    ),
                                  ),
                                  validator: (password) {
                                    if (password == null || password.isEmpty) {
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
                                    if (!RegExp('^.{8,}').hasMatch(password)) {
                                      return 'password length should be 8 character ';
                                    }
                                    return null;
                                  },
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [],
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Already have an account?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: downColor,
                                            decorationThickness: 2),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
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
                                  Get.to(() => ApiService().registerUser(
                                      context,
                                      nameController.text,
                                      phoneController.text,
                                      emailController.text,
                                      pswdController.text,
                                      "Agent"));
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
              const SizedBox(height: 10),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "You have an account ?  ",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign in ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: blue,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.off(() => const LoginScreen());
                            }),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
