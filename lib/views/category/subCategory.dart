// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:dear_jobs/model/subCategoryModel.dart';
import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/network/apiservice.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubCategoryScreen extends StatefulWidget {
  final id;
  final name;
  const SubCategoryScreen({Key? key, this.id, this.name}) : super(key: key);

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  bool isLoading = false;

  void getjobData() async {
    setState(() {
      isLoading = true;
    });
    await ApiService().subcategoriesApi(widget.id);
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.name,
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
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: isLoading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(
                      color: downColor,
                      strokeWidth: 3,
                    ),
                  ),
                ],
              )
            : subcategoryContent.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.faceFrown,
                          size: 50,
                          color: red,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Does Not Have Any Data',
                          style: TextStyle(
                            color: blue.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    itemCount: subcategoryContent.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            child: Container(
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
                                    image: NetworkImage(
                                        ApiConstant.imagBaseUrl +
                                            subcategoryContent[index]
                                                .image
                                                .toString()),
                                    height: 25,
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      subcategoryContent[index]
                                          .title
                                          .toString(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextDesign().smallboldtext,
                                    ),
                                  ),
                                  Text(
                                      "("
                                      '${subcategoryContent[index].jobcount}'
                                      " Jobs)",
                                      style: TextDesign().smallgreytext),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
      ),
    );
  }
}
