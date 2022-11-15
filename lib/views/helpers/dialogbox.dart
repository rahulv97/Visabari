import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialogBox {
  Future dialog(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Dialog(
          insetPadding: const EdgeInsets.all(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Text(
                'LOGOUT',
                style: TextDesign().bigtext,
              ),
              const SizedBox(height: 10),
              Text('Are you sure you want to logout ?',
                  style: TextDesign().smallgreytext),
              const SizedBox(height: 10),
              Container(
                height: 1,
                width: double.infinity,
                color: grey,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(primary: upColor),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Cancel',
                      style: TextDesign().smallboldtext,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: grey,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: upColor),
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextDesign().smallboldtext,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
