import 'package:dear_jobs/model/bookmarkmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/newjobs/jobsingle.dart';
import 'package:dear_jobs/widget/menuwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarScreen extends StatefulWidget {
  const BookmarScreen({Key? key}) : super(key: key);

  @override
  State<BookmarScreen> createState() => _BookmarScreenState();
}

class _BookmarScreenState extends State<BookmarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'BOOKMARK',
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.slider_horizontal_3),
            color: white,
            iconSize: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: bookmarkContent.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const JobSingleScreen());
                        },
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
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage(bookmarkContent[index]
                                            .image
                                            .toString()),
                                        height: 25,
                                      ),
                                      const SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              bookmarkContent[index]
                                                  .heading
                                                  .toString(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextDesign().headingtext,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              bookmarkContent[index]
                                                  .subheading
                                                  .toString(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextDesign().smallgreytext,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.bookmark,
                                    size: 30,
                                    color: downColor,
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                bookmarkContent[index].description.toString(),
                                style: TextDesign().descriptiontext,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    bookmarkContent[index]
                                        .pricerange
                                        .toString(),
                                    style: TextDesign().pricetext,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 80,
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
                                        'APPLY',
                                        style: TextDesign().smallwhiteboldtext,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
