import 'dart:convert';
import 'dart:developer';

import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/profile/editprofile.dart';
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

  Future countries() async {
    try {
      var url = Uri.parse(ApiConstant.BASEURL + ApiConstant.countries);
      var response = await http.post(
        url,
        headers: {
          'apiKey': '123456',
        },
      );
      // print(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> map = json.decode(response.body);

        for (var i = 0; i < map.length; i++) {
          country.add(map[i]);
          print(country);
        }

        // print(country);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
