import 'package:dear_jobs/model/newjobmodel.dart';
import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/newjobs/jobsingle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewJobsScreen extends StatefulWidget {
  const NewJobsScreen({Key? key}) : super(key: key);

  @override
  State<NewJobsScreen> createState() => _NewJobsScreenState();
}

class _NewJobsScreenState extends State<NewJobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'NEW JOBS',
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
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: jobContent.length <= 2 ? jobContent.length : 2,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => JobSingleScreen(
                                    heading:
                                        jobContent[index].heading.toString(),
                                    image: ApiConstant.imagBaseUrl +
                                        jobContent[index].image.toString(),
                                    companytitle: jobContent[index]
                                        .companytitle
                                        .toString(),
                                    country:
                                        jobContent[index].country.toString(),
                                    city: jobContent[index].city.toString(),
                                    description: jobContent[index]
                                        .description
                                        .toString(),
                                    salmin: jobContent[index].salmin.toString(),
                                    salmax: jobContent[index].salmax.toString(),
                                    jobtype:
                                        jobContent[index].jobtype.toString(),
                                    id: jobContent[index].id.toString(),
                                    deadline:
                                        jobContent[index].deadline.toString(),
                                  ));
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
                                            image: NetworkImage(
                                                ApiConstant.imagBaseUrl +
                                                    jobContent[index]
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
                                                  "${jobContent[index].heading.toString()}",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      TextDesign().headingtext,
                                                ),
                                              ),
                                              const SizedBox(height: 2),
                                              SizedBox(
                                                width: 220,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "${jobContent[index].companytitle.toString()}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .smallgreytext,
                                                    ),
                                                    Text(
                                                      "${jobContent[index].country.toString()}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .smallgreytext,
                                                    ),
                                                    Text(
                                                      "${jobContent[index].city.toString()}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .smallgreytext,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.bookmark,
                                        size: 30,
                                        color: grey,
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "${jobContent[index].description.toString()}",
                                    style: TextDesign().descriptiontext,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "${jobContent[index].salmin.toString()}"
                                            ' - ',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextDesign().pricetext,
                                          ),
                                          Text(
                                            "${jobContent[index].salmax.toString()}"
                                            ' a year',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextDesign().pricetext,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                            style:
                                                TextDesign().smallwhiteboldtext,
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
            ],
          ),
        ),
      ),
    );
  }
}
