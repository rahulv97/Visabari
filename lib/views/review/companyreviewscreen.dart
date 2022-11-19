import 'package:dear_jobs/model/reviewmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'REVIEW',
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
      body: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: reviewContent.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}
