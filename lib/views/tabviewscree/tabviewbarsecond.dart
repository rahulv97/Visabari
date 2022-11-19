import 'package:dear_jobs/model/reviewmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/review/companyreviewscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';

class TabViewScreenSecond extends StatefulWidget {
  const TabViewScreenSecond({Key? key}) : super(key: key);

  @override
  State<TabViewScreenSecond> createState() => _TabViewScreenSecondState();
}

class _TabViewScreenSecondState extends State<TabViewScreenSecond> {
  double starvalue = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'REVIEW SUMMARY',
              style: TextDesign().headingtext,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: grey,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RatingStars(
                            value: 5,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 15,
                            ),
                            starCount: 5,
                            starSize: 15,
                            maxValue: 5,
                            starSpacing: 0,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "(2)",
                            style: TextDesign().filtertext,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: blue,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "90%",
                            style: TextDesign().filtertext,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RatingStars(
                            value: 4,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 15,
                            ),
                            starCount: 5,
                            starSize: 15,
                            maxValue: 5,
                            starSpacing: 0,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "(1)",
                            style: TextDesign().filtertext,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: grey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  color: blue,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "10%",
                            style: TextDesign().filtertext,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RatingStars(
                            value: 3,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 15,
                            ),
                            starCount: 5,
                            starSize: 15,
                            maxValue: 5,
                            starSpacing: 0,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "(0)",
                            style: TextDesign().filtertext,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "0%",
                            style: TextDesign().filtertext,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RatingStars(
                            value: 2,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 15,
                            ),
                            starCount: 5,
                            starSize: 15,
                            maxValue: 5,
                            starSpacing: 0,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "(0)",
                            style: TextDesign().filtertext,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "0%",
                            style: TextDesign().filtertext,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          RatingStars(
                            value: 1,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 15,
                            ),
                            starCount: 5,
                            starSize: 15,
                            maxValue: 5,
                            starSpacing: 0,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.amber,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "(0)",
                            style: TextDesign().filtertext,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "0%",
                            style: TextDesign().filtertext,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'YOUR RATING',
              style: TextDesign().headingtext,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: grey,
                    blurRadius: 2,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  RatingStars(
                    value: starvalue.toDouble(),
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                      size: 20,
                    ),
                    starCount: 5,
                    starSize: 20,
                    maxValue: 5,
                    starSpacing: 0,
                    maxValueVisibility: true,
                    valueLabelVisibility: false,
                    animationDuration: const Duration(milliseconds: 1000),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: Colors.amber,
                    onValueChanged: (value) {
                      setState(() {
                        starvalue = value;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter here',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.60,
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
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        style: TextDesign().smallwhiteboldtext,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'REVIEW ',
                  style: TextDesign().headingtext,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ReviewScreen());
                  },
                  child: Text(
                    ' See All',
                    style: TextDesign().clrtext,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: reviewContent.length < 4 ? reviewContent.length : 4,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: red,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      reviewContent[index].image.toString(),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    reviewContent[index].name.toString(),
                                    style: TextDesign().headingtext,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    reviewContent[index].time.toString(),
                                    style: TextDesign().smallgreytext,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 80),
                              RatingStars(
                                value: 5,
                                starBuilder: (index, color) => Icon(
                                  Icons.star,
                                  color: color,
                                  size: 15,
                                ),
                                starCount: 5,
                                starSize: 15,
                                maxValue: 5,
                                starSpacing: 0,
                                maxValueVisibility: true,
                                valueLabelVisibility: false,
                                animationDuration:
                                    const Duration(milliseconds: 1000),
                                starOffColor: const Color(0xffe7e8ea),
                                starColor: Colors.amber,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            reviewContent[index].description.toString(),
                            style: TextDesign().smallgreytext,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
