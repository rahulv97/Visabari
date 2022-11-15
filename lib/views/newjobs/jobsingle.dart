import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/widget/tabviewbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobSingleScreen extends StatefulWidget {
  const JobSingleScreen({Key? key}) : super(key: key);

  @override
  State<JobSingleScreen> createState() => _JobSingleScreenState();
}

class _JobSingleScreenState extends State<JobSingleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Job SINGLE',
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
            icon: const Icon(Icons.share),
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Image(
                          image: AssetImage("assets/wordpress.png"),
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "WordPress Designing",
                          style: TextDesign().headingtext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$75,000 - \$90,000 a year",
                              style: TextDesign().lighttext,
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: grey,
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Full Time',
                                  style: TextDesign().lighttext,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/cmp3.png"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Webstort Technology',
                                    style: TextDesign().headingtext,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              '15 Days Left',
                              style: TextDesign().smallgreytext,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                const TabViewWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark,
                size: 30,
                color: downColor,
              ),
            ),
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
                  'APPLY NOW',
                  style: TextDesign().smallwhiteboldtext,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
