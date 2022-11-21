import 'package:dear_jobs/model/newjobmodel.dart';
import 'package:dear_jobs/model/relatedjobsmodel.dart';
import 'package:dear_jobs/network/apiservice.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/relatedjobs/relatedjobspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViewScreenFirst extends StatefulWidget {
  final id;
  const TabViewScreenFirst({Key? key, this.id}) : super(key: key);

  @override
  State<TabViewScreenFirst> createState() => _TabViewScreenFirstState();
}

class _TabViewScreenFirstState extends State<TabViewScreenFirst> {
  // ignore: prefer_typing_uninitialized_variables
  var jobDetails;
  bool isVisible = false;
  void getData() async {
    setState(() {
      isVisible = false;
    });
    jobDetails = await ApiService().jobDetailApi(widget.id);

    setState(() {
      isVisible = true;
    });
  }

  @override
  void initState() {
    setState(() {
      getData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'QUALIFICATIONS',
                style: TextDesign().headingtext,
              ),
            ),
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        size: 10,
                        color: black,
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: isVisible
                            ? Text(
                                jobDetails['qualifications'].toString(),
                                textAlign: TextAlign.justify,
                                style: TextDesign().lighttext,
                              )
                            : Text(
                                'Loading...',
                                textAlign: TextAlign.justify,
                                style: TextDesign().lighttext,
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
                'ABOUT THE JOB',
                style: TextDesign().headingtext,
              ),
            ),
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        size: 10,
                        color: black,
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: isVisible
                            ? Text(
                                jobDetails['description'].toString(),
                                textAlign: TextAlign.justify,
                                style: TextDesign().lighttext,
                              )
                            : Text(
                                'Loading...',
                                textAlign: TextAlign.justify,
                                style: TextDesign().lighttext,
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
                'RESPONSBILITIES',
                style: TextDesign().headingtext,
              ),
            ),
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: isVisible
                                ? Text(
                                    jobDetails['requirements'].toString(),
                                    textAlign: TextAlign.justify,
                                    style: TextDesign().lighttext,
                                  )
                                : Text(
                                    'Loading...',
                                    textAlign: TextAlign.justify,
                                    style: TextDesign().lighttext,
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RELATED JOBS',
                    style: TextDesign().headingtext,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const RelatedJobScreen());
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: RelatedjobsContent.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        Container(
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
                                        image: AssetImage(
                                            RelatedjobsContent[index]
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
                                              RelatedjobsContent[index]
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
                                              RelatedjobsContent[index]
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
                                    color: grey,
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                RelatedjobsContent[index]
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
                                  Text(
                                    RelatedjobsContent[index]
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
                      ],
                    ),
                  );
                }),
          ],
        ),
      ],
    );
  }
}
