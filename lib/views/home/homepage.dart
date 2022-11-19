import 'package:carousel_slider/carousel_slider.dart';
import 'package:dear_jobs/model/categorymodel.dart';
import 'package:dear_jobs/model/companiesmodel.dart';
import 'package:dear_jobs/model/featuredjobmodel.dart';
import 'package:dear_jobs/model/newjobmodel.dart';
import 'package:dear_jobs/model/testmonialmodel.dart';
import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/network/apiservice.dart';
import 'package:dear_jobs/views/category/categorypage.dart';
import 'package:dear_jobs/views/category/subCategory.dart';
import 'package:dear_jobs/views/companies/companies.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/featuredjobs/featuredjobs.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/newjobs/jobsingle.dart';
import 'package:dear_jobs/views/newjobs/newjobs.dart';
import 'package:dear_jobs/widget/filterscreen.dart';
import 'package:dear_jobs/widget/menuwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerlist = [
    "assets/banner.png",
    "assets/banner.png",
    "assets/banner.png",
    "assets/banner.png",
  ];

  bool isLoading = false;

  void getjobData() async {
    setState(() {
      isLoading = true;
    });
    await ApiService().allJobApi();
    await ApiService().featuredJobApi();
    await ApiService().categoriesApi();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getjobData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const MenuWidget(),
        title: Text(
          'HOME',
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
            onPressed: () {
              Get.to(() => const FilterScreen());
            },
            icon: const Icon(CupertinoIcons.slider_horizontal_3),
            color: white,
            iconSize: 30,
          ),
        ],
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    itemCount: bannerlist.length,
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      viewportFraction: 1,
                      aspectRatio: 2,
                      reverse: false,
                      autoPlayInterval: const Duration(seconds: 2),
                    ),
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                bannerlist[index].toString(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ALL CATEGORY',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const CategoryScreen());
                        },
                        child: Text(
                          'See All',
                          style: TextDesign().clrtext,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: isLoading
                        ? Center(
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: downColor,
                                strokeWidth: 3,
                              ),
                            ),
                          )
                        : ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: categoryContent.length <= 4
                                ? categoryContent.length
                                : 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => SubCategoryScreen(
                                              id: categoryContent[index]
                                                  .catid
                                                  .toString(),
                                              name: categoryContent[index]
                                                  .title
                                                  .toString(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: grey,
                                              blurRadius: 1,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 10),
                                            Image(
                                              image: NetworkImage(
                                                  ApiConstant.imagBaseUrl +
                                                      categoryContent[index]
                                                          .image
                                                          .toString()),
                                              height: 25,
                                            ),
                                            const SizedBox(height: 10),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                categoryContent[index]
                                                    .title
                                                    .toString(),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    TextDesign().smallboldtext,
                                              ),
                                            ),
                                            Text(
                                                "("
                                                '${categoryContent[index].jobcount}'
                                                " Jobs)",
                                                style:
                                                    TextDesign().smallgreytext),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NEW JOBS',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const NewJobsScreen());
                        },
                        child: Text(
                          ' See All',
                          style: TextDesign().clrtext,
                        ),
                      )
                    ],
                  ),
                  isLoading
                      ? Center(
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: downColor,
                              strokeWidth: 3,
                            ),
                          ),
                        )
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              jobContent.length <= 2 ? jobContent.length : 2,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => JobSingleScreen(
                                            heading: jobContent[index]
                                                .heading
                                                .toString(),
                                            image: ApiConstant.imagBaseUrl +
                                                jobContent[index]
                                                    .image
                                                    .toString(),
                                            companytitle: jobContent[index]
                                                .companytitle
                                                .toString(),
                                            country: jobContent[index]
                                                .country
                                                .toString(),
                                            city: jobContent[index]
                                                .city
                                                .toString(),
                                            description: jobContent[index]
                                                .description
                                                .toString(),
                                            salmin: jobContent[index]
                                                .salmin
                                                .toString(),
                                            salmax: jobContent[index]
                                                .salmax
                                                .toString(),
                                            jobtype: jobContent[index]
                                                .jobtype
                                                .toString(),
                                            id: jobContent[index].id.toString(),
                                            deadline: jobContent[index]
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image(
                                                    image: NetworkImage(
                                                        ApiConstant
                                                                .imagBaseUrl +
                                                            jobContent[index]
                                                                .image
                                                                .toString()),
                                                    height: 25,
                                                  ),
                                                  const SizedBox(width: 15),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 200,
                                                        child: Text(
                                                          jobContent[index]
                                                              .heading
                                                              .toString(),
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextDesign()
                                                              .headingtext,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 2),
                                                      SizedBox(
                                                        width: 220,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              jobContent[index]
                                                                  .companytitle
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextDesign()
                                                                  .smallgreytext,
                                                            ),
                                                            Text(
                                                              jobContent[index]
                                                                  .country
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextDesign()
                                                                  .smallgreytext,
                                                            ),
                                                            Text(
                                                              jobContent[index]
                                                                  .city
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
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
                                            jobContent[index]
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    "${jobContent[index].salmin.toString()}"
                                                    ' - ',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextDesign().pricetext,
                                                  ),
                                                  Text(
                                                    "${jobContent[index].salmax.toString()}"
                                                    ' a year',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextDesign().pricetext,
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
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.bottomRight,
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
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'COMPANIES',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const CompanyScreen());
                        },
                        child: Text(
                          ' See All',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: companyContent.length <= 4
                          ? companyContent.length
                          : 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Image(
                                      image: AssetImage(companyContent[index]
                                          .image
                                          .toString()),
                                      height: 35,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      companyContent[index].title.toString(),
                                      style: TextDesign().smallboldtext,
                                    ),
                                    Text(
                                        "("
                                        '${companyContent[index].jobcount}'
                                        " Jobs)",
                                        style: TextDesign().smallgreytext),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/downloadbanner.png"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FEATURED JOBS',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const FeaturedJobScreen());
                        },
                        child: Text(
                          ' See All',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                  isLoading
                      ? Center(
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: downColor,
                              strokeWidth: 3,
                            ),
                          ),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image(
                                                    image: NetworkImage(
                                                        ApiConstant
                                                                .imagBaseUrl +
                                                            featuredjobContent[
                                                                    index]
                                                                .image
                                                                .toString()),
                                                    height: 25,
                                                  ),
                                                  const SizedBox(width: 15),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 200,
                                                        child: Text(
                                                          featuredjobContent[
                                                                  index]
                                                              .heading
                                                              .toString(),
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextDesign()
                                                              .headingtext,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 2),
                                                      SizedBox(
                                                        width: 200,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              featuredjobContent[
                                                                      index]
                                                                  .companytitle
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextDesign()
                                                                  .smallgreytext,
                                                            ),
                                                            Text(
                                                              featuredjobContent[
                                                                      index]
                                                                  .country
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextDesign()
                                                                  .smallgreytext,
                                                            ),
                                                            Text(
                                                              featuredjobContent[
                                                                      index]
                                                                  .city
                                                                  .toString(),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      "${featuredjobContent[index].salmin.toString()}"
                                                      ' - ',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextDesign()
                                                          .pricetext,
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        "${featuredjobContent[index].salmax.toString()}"
                                                        ' a year',
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextDesign()
                                                            .pricetext,
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
                                                          BorderRadius.circular(
                                                              5),
                                                      gradient: LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .bottomRight,
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
                  const SizedBox(height: 15),
                  Text(
                    "OUR TESTIMONIAL",
                    style: TextDesign().bigtext,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: monialContent.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.5,
                                width: MediaQuery.of(context).size.width / 1.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: white,
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
                                          Image(
                                            image: AssetImage(
                                                monialContent[index]
                                                    .image
                                                    .toString()),
                                            height: 50,
                                          ),
                                          const SizedBox(width: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                monialContent[index]
                                                    .name
                                                    .toString(),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextDesign().headingtext,
                                              ),
                                              Text(
                                                monialContent[index]
                                                    .email
                                                    .toString(),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextDesign().lighttext,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            RatingStars(
                                              value: 5,
                                              starBuilder: (index, color) =>
                                                  Icon(
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
                                              animationDuration: const Duration(
                                                  milliseconds: 1000),
                                              starOffColor:
                                                  const Color(0xffe7e8ea),
                                              starColor: Colors.amber,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              "("
                                              '${monialContent[index].review}'
                                              ")",
                                              style: TextStyle(
                                                  letterSpacing: 1,
                                                  fontSize: 12,
                                                  color: black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        monialContent[index]
                                            .description
                                            .toString(),
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: TextDesign().descriptiontext,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
