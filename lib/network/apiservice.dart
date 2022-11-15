import 'dart:convert';

import 'package:dear_jobs/network/apiconstant.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/dashboard.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future registerUser(
    BuildContext context,
    String name,
    String phone,
    String email,
    String paswd,
    String role,
  ) async {
    var response = await http
        .post(Uri.https(ApiConstant.BASEURL, ApiConstant.register), headers: {
      "Content-type":
          "multipart/form-data; boundary=<calculated when request is sent>",
      'Content-Length': '<calculated when request is sent>',
      'Host': '<calculated when request is sent>',
      'apiKey': '123456',
    }, body: {
      'name': name,
      'phone': phone,
      'email': email,
      'password': paswd,
      'role': role,
    });
    // ignore: unused_local_variable
    var result = json.decode(response.body);

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
  }
}
