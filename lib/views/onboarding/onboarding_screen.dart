import 'package:dear_jobs/model/onboardingmodel.dart';
import 'package:dear_jobs/views/auth/chooseoption.dart';
import 'package:dear_jobs/views/auth/login.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastIndex = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Image(
                image: AssetImage("assets/colorlogo.png"),
                height: 100,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 250,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() => isLastIndex = index == 2);
                },
                itemCount: onboardingModelcontent.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.3,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "${onboardingModelcontent[index].image}"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "${onboardingModelcontent[index].heading}",
                        style: TextDesign().boldtext,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingModelcontent[index].subheading.toString(),
                        textAlign: TextAlign.center,
                        style: TextDesign().lighttext,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: isLastIndex
                  ? SizedBox(
                      height: 80,
                      child: Center(
                        child: TextButton(
                          onPressed: () async {
                            final pref = await SharedPreferences.getInstance();
                            pref.setBool('showHome', true);
                            Get.to(
                              () => const ChooseAuthOption(),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                                "GET START NOW",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => controller.jumpToPage(2),
                            child: const Text("Skip"),
                          ),
                          Center(
                            child: SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: WormEffect(
                                dotColor: Colors.grey,
                                dotHeight: 8,
                                dotWidth: 8,
                                activeDotColor: blue,
                              ),
                              onDotClicked: ((index) =>
                                  controller.animateToPage(index,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn)),
                            ),
                          ),
                          TextButton(
                            onPressed: () => controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                            child: const Text("Next"),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
