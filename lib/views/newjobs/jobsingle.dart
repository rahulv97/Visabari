// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dear_jobs/model/newjobmodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/widget/tabviewbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobSingleScreen extends StatefulWidget {
  final heading;
  final image;
  final companytitle;
  final country;
  final city;
  final description;
  final salmin;
  final salmax;
  final jobtype;
  final deadline;
  final qualification;
  final id;
  const JobSingleScreen(
      {Key? key,
      this.heading,
      this.jobtype,
      this.image,
      this.companytitle,
      this.country,
      this.city,
      this.description,
      this.salmin,
      this.salmax,
      this.deadline,
      this.qualification,
      this.id})
      : super(key: key);

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
                        Image(
                          image: NetworkImage(widget.image),
                          height: 60,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.heading,
                          style: TextDesign().headingtext,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.salmin + ' - ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextDesign().lighttext,
                            ),
                            Flexible(
                              child: Text(
                                widget.salmax + " a year",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextDesign().lighttext,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
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
                                  widget.jobtype,
                                  style: TextDesign().lighttext,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(widget.image),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 10),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.companytitle,
                                      style: TextDesign().headingtext,
                                    ),
                                    SizedBox(
                                      width: 180,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            size: 20,
                                            color: grey,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "${widget.country}"
                                              " , ",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextDesign().lighttext,
                                            ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              "${widget.city}",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextDesign().lighttext,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                widget.deadline,
                                style: TextDesign().smallgreytext,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                TabViewWidget(
                  id: widget.id,
                ),
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
