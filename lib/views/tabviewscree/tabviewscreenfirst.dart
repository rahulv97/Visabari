import 'package:dear_jobs/model/relatedjobsmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabViewScreenFirst extends StatefulWidget {
  const TabViewScreenFirst({Key? key}) : super(key: key);

  @override
  State<TabViewScreenFirst> createState() => _TabViewScreenFirstState();
}

class _TabViewScreenFirstState extends State<TabViewScreenFirst> {
  List education = [
    "It is a long established fact that a reader will be distracted by content of"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
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
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: education.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.circle_fill,
                              size: 10,
                              color: black,
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                education[index],
                                textAlign: TextAlign.justify,
                                style: TextDesign().lighttext,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
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
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 10,
                            color: black,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "It is a long established fact that a reader will be distracted by content of",
                              textAlign: TextAlign.justify,
                              style: TextDesign().lighttext,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'RELATED JOBS',
                style: TextDesign().headingtext,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                // physics: const BouncingScrollPhysics(),
                physics: NeverScrollableScrollPhysics(),
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
