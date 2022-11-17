import 'package:dear_jobs/network/apiservice.dart';
import 'package:dear_jobs/views/auth/forgotpaswd.dart';
import 'package:dear_jobs/views/auth/signup.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRember = false;
  bool isPasswordVisible = true;
  // ignore: prefer_final_fields
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
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
                            'Welcome Back!',
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
                            margin: const EdgeInsets.only(bottom: 25),
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
                              child: Column(
                                children: [
                                  const SizedBox(height: 40),
                                  TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      suffixIcon: Icon(
                                        Icons.email,
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
                                    obscureText: isPasswordVisible,
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
                                      if (password!.isEmpty) {
                                        return 'enter password';
                                      }
                                      return null;
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            value: isRember,
                                            onChanged: (value) {
                                              setState(() => isRember = value!);
                                            },
                                            activeColor: blue,
                                          ),
                                          const Text(
                                            "Remember me",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.to(() =>
                                              const ForgotPasswordScreen());
                                        },
                                        child: Text(
                                          "Forgot Password",
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
                                  if (_formKey.currentState!.validate()) {
                                    ApiService().userLogin(
                                        context,
                                        emailController.text,
                                        pswdController.text);
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
                const SizedBox(height: 20),
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
                      text: "Don't have an account ?  ",
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blue,
                              fontSize: 14,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.off(() => const SignUpScreen());
                              }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
