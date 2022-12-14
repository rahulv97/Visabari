import 'package:dear_jobs/model/featuredjobmodel.dart';
import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/newjobs/jobsingle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturedJobScreen extends StatefulWidget {
  const FeaturedJobScreen({Key? key}) : super(key: key);

  @override
  State<FeaturedJobScreen> createState() => _FeaturedJobScreenState();
}

class _FeaturedJobScreenState extends State<FeaturedJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'FEATURED JOBS',
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
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: featuredjobContent.length <= 2
                      ? featuredjobContent.length
                      : 2,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => JobSingleScreen(
                                    heading: featuredjobContent[index]
                                        .heading
                                        .toString(),
                                    image: ApiConstant.imagBaseUrl +
                                        featuredjobContent[index]
                                            .image
                                            .toString(),
                                    companytitle: featuredjobContent[index]
                                        .companytitle
                                        .toString(),
                                    country: featuredjobContent[index]
                                        .country
                                        .toString(),
                                    city: featuredjobContent[index]
                                        .city
                                        .toString(),
                                    description: featuredjobContent[index]
                                        .description
                                        .toString(),
                                    salmin: featuredjobContent[index]
                                        .salmin
                                        .toString(),
                                    salmax: featuredjobContent[index]
                                        .salmax
                                        .toString(),
                                    jobtype: featuredjobContent[index]
                                        .jobtype
                                        .toString(),
                                    id: featuredjobContent[index].id.toString(),
                                    qualification:
                                        featuredjobContent[index].id.toString(),
                                    deadline: featuredjobContent[index]
                                        .deadline
                                        .toString(),
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
                                                    featuredjobContent[index]
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
                                                  featuredjobContent[index]
                                                      .heading
                                                      .toString(),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      TextDesign().headingtext,
                                                ),
                                              ),
                                              const SizedBox(height: 2),
                                              SizedBox(
                                                width: 200,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      featuredjobContent[index]
                                                          .companytitle
                                                          .toString(),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .smallgreytext,
                                                    ),
                                                    Text(
                                                      featuredjobContent[index]
                                                          .country
                                                          .toString(),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .smallgreytext,
                                                    ),
                                                    Text(
                                                      featuredjobContent[index]
                                                          .city
                                                          .toString(),
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
                                    featuredjobContent[index]
                                        .description
                                        .toString(),
                                    style: TextDesign().descriptiontext,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "${featuredjobContent[index].salmin.toString()}"
                                              ' - ',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextDesign().pricetext,
                                            ),
                                            Flexible(
                                              child: Text(
                                                "${featuredjobContent[index].salmax.toString()}"
                                                ' a year',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextDesign().pricetext,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'FEATURED',
                                            style: TextDesign().redtext,
                                          ),
                                          const SizedBox(width: 10),
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
                                                style: TextDesign()
                                                    .smallwhiteboldtext,
                                              ),
                                            ),
                                          ),
                                        ],
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
