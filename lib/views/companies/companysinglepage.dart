import 'package:dear_jobs/model/jobvacancymodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleCompanyScreen extends StatefulWidget {
  final companylogo;
  const SingleCompanyScreen({Key? key, this.companylogo}) : super(key: key);

  @override
  State<SingleCompanyScreen> createState() => _SingleCompanyScreenState();
}

class _SingleCompanyScreenState extends State<SingleCompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'COMPANY SINGLE',
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/companycover.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 10,
                        right: 10,
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: grey,
                                blurRadius: 5,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.companylogo.toString()),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Webstort Technology',
                                        style: TextDesign().bigtext,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            size: 20,
                                            color: grey,
                                          ),
                                          Text(
                                            'Loss Angles',
                                            style: TextDesign().lighttext,
                                          ),
                                          const SizedBox(width: 30),
                                          CupertinoButton(
                                              padding: const EdgeInsets.all(0),
                                              child: Container(
                                                height: 35,
                                                width: 100,
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
                                                      '4 Open Positions',
                                                      style: TextDesign()
                                                          .emailtext),
                                                ),
                                              ),
                                              onPressed: () {})
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'ABOUT US',
                    style: TextDesign().bigtext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GROW NEXT LEVEL BUSINESS.',
                            style: TextDesign().bigtext,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'What do all consultants need? In short, trust. This isachieved with professional presentation and the ability to ommunicate clearly with and potential clients. Whether you are an accountant.Lorem ipsum dolor sit amet, consectetur adipisicing elit, seddo eiusd tempor incididunt ut labore.',
                            textAlign: TextAlign.justify,
                            style: TextDesign().lighttext,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'OVERVIEW COMPANY',
                    style: TextDesign().bigtext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                FontAwesomeIcons.networkWired,
                                color: blue,
                                size: 15,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Categories',
                                  style: TextDesign().headingtext,
                                ),
                                Text(
                                  'Design & Creative',
                                  style: TextDesign().lighttext,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(indent: 50, thickness: 1),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                CupertinoIcons.location_solid,
                                color: blue,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location',
                                  style: TextDesign().headingtext,
                                ),
                                Text(
                                  'Los Angeles Califonia PO',
                                  style: TextDesign().lighttext,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(indent: 50, thickness: 1),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.phone,
                                color: blue,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone Number',
                                  style: TextDesign().headingtext,
                                ),
                                Text(
                                  '708-861-7818',
                                  style: TextDesign().lighttext,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(indent: 50, thickness: 1),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.email,
                                color: blue,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email Address',
                                  style: TextDesign().headingtext,
                                ),
                                Text(
                                  'webstrot@example.com',
                                  style: TextDesign().lighttext,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(indent: 50, thickness: 1),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                FontAwesomeIcons.globe,
                                color: blue,
                                size: 15,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Website',
                                  style: TextDesign().headingtext,
                                ),
                                Text(
                                  'www.webstrot.com',
                                  style: TextDesign().lighttext,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'SOCIAL PROFILE',
                    style: TextDesign().bigtext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Image(
                            image: AssetImage("assets/facebook.png"),
                            height: 40),
                        Image(
                            image: AssetImage("assets/linkedincover.png"),
                            height: 40),
                        Image(
                            image: AssetImage("assets/twitter.png"),
                            height: 40),
                        Image(
                            image: AssetImage("assets/instagram.png"),
                            height: 40),
                        Image(
                            image: AssetImage("assets/youtube.png"),
                            height: 40),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'JOB VACANCIES',
                    style: TextDesign().bigtext,
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: jobVacancyContent.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
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
                                                jobVacancyContent[index]
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
                                                  jobVacancyContent[index]
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
                                                child: Text(
                                                  jobVacancyContent[index]
                                                      .subheading
                                                      .toString(),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextDesign()
                                                      .smallgreytext,
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
                                    jobVacancyContent[index]
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
                                        jobVacancyContent[index]
                                            .pricerange
                                            .toString(),
                                        style: TextDesign().pricetext,
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
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
