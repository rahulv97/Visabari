import 'dart:convert';
import 'dart:developer';

import 'package:dear_jobs/model/categorymodel.dart';
import 'package:dear_jobs/model/countrymodel.dart';
import 'package:dear_jobs/model/featuredjobmodel.dart';
import 'package:dear_jobs/model/newjobmodel.dart';
import 'package:dear_jobs/model/subCategoryModel.dart';
import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/profile/editprofile.dart';
import 'package:dear_jobs/views/tabviewscree/tabviewscreenfirst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future registerUser(
      BuildContext context, name, phone, email, paswd, role) async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.register);
      var response = await http.post(url, headers: {
        // "Content-type":
        //     "multipart/form-data; boundary=<calculated when request is sent>",
        // 'Content-Length': '<calculated when request is sent>',
        // 'Host': '<calculated when request is sent>',
        'apiKey': '123456',
      }, body: {
        'name': name,
        'phone': phone,
        'email': email,
        'password': paswd,
        'role': role,
      });
      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: CircularProgressIndicator(
                color: upColor,
                strokeWidth: 2,
              ),
            );
          },
        );
        Future.delayed(
          const Duration(seconds: 5),
          () {
            Get.offAll(() => const DashboardScreen());
          },
        );
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              Future.delayed(const Duration(seconds: 1), () {
                Get.back();
              });
              return AlertDialog(
                actions: [
                  Center(
                    child: Text(
                      'Some error Occured',
                      style: TextDesign().lighttext,
                    ),
                  )
                ],
              );
            });
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future userLogin(BuildContext context, email, pswd) async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.login);
      var response = await http.post(url, headers: {
        'apiKey': '123456',
      }, body: {
        'email': email,
        'password': pswd,
      });
      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: CircularProgressIndicator(
                color: upColor,
                strokeWidth: 5,
              ),
            );
          },
        );
        Future.delayed(
          const Duration(seconds: 2),
          () {
            Get.offAll(() => const DashboardScreen());
          },
        );
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              Future.delayed(const Duration(seconds: 1), () {
                Get.back();
              });
              return AlertDialog(
                actions: [
                  Center(
                    child: Text(
                      'Some error Occured',
                      style: TextDesign().lighttext,
                    ),
                  )
                ],
              );
            });
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future allJobApi() async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.alljob);
      var response = await http.post(
        url,
        headers: {
          'apiKey': '123456',
        },
      );
      List jobData = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        jobContent.clear();
        for (var i = 0; i < jobData.length; i++) {
          jobContent.add(
            NewJobModel(
              heading: jobData[i]['title'].toString(),
              companytitle: jobData[i]['title_bn'].toString(),
              country: jobData[i]['country_id'].toString(),
              city: jobData[i]['locality_id'].toString(),
              description: jobData[i]['description'].toString(),
              image: jobData[i]['image'].toString(),
              salmin: jobData[i]['salary_min'].toString(),
              salmax: jobData[i]['salary_max'].toString(),
              jobtype: jobData[i]['job_type'].toString(),
              deadline: jobData[i]['deadline'].toString(),
              id: jobData[i]['id'].toString(),
            ),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future jobDetailApi(String id) async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.alljob + id);
      var response = await http.post(
        url,
        headers: {
          'apiKey': '123456',
        },
      );
      List jobData = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        jobContent.clear();
        for (var i = 0; i < jobData.length; i++) {
          jobContent.add(
            NewJobModel(
              heading: jobData[i]['title'].toString(),
              companytitle: jobData[i]['title_bn'].toString(),
              country: jobData[i]['country_id'].toString(),
              city: jobData[i]['locality_id'].toString(),
              description: jobData[i]['description'].toString(),
              image: jobData[i]['image'].toString(),
              salmin: jobData[i]['salary_min'].toString(),
              salmax: jobData[i]['salary_max'].toString(),
              qualification: jobData[i]['qualifications'].toString(),
              id: jobData[i]['id'].toString(),
            ),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future featuredJobApi() async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.featuredjobs);
      var response = await http.post(
        url,
        headers: {
          'apiKey': '123456',
        },
      );
      List jobData = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        featuredjobContent.clear();
        for (var i = 0; i < jobData.length; i++) {
          featuredjobContent.add(
            FeaturedJobModel(
              heading: jobData[i]['title'].toString(),
              companytitle: jobData[i]['title_bn'].toString(),
              country: jobData[i]['country_id'].toString(),
              city: jobData[i]['locality_id'].toString(),
              description: jobData[i]['description'].toString(),
              image: jobData[i]['image'].toString(),
              salmin: jobData[i]['salary_min'].toString(),
              salmax: jobData[i]['salary_max'].toString(),
            ),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future categoriesApi() async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.categories);
      var response = await http.post(url, headers: {
        'apiKey': '123456',
      });
      List catData = json.decode(response.body);
      if (response.statusCode == 200) {
        for (var i = 0; i < catData.length; i++) {
          categoryContent.add(
            AllCategoryModel(
              image: catData[i]['image'].toString(),
              title: catData[i]['name'].toString(),
              catid: catData[i]['id'].toString(),
            ),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future subcategoriesApi(String id) async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.subcategories + id);
      var response = await http.post(url, headers: {
        'apiKey': '123456',
      });
      var item = json.decode(response.body);
      var catData = item['job_subcategories'];

      if (response.statusCode == 200) {
        subcategoryContent.clear();
        for (var i = 0; i < catData.length; i++) {
          subcategoryContent.add(
            SubCategoryModel(
              image: catData[i]['image'].toString(),
              title: catData[i]['name'].toString(),
              catid: catData[i]['id'].toString(),
            ),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
