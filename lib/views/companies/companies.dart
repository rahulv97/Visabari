import 'package:dear_jobs/model/companiesmodel.dart';
import 'package:dear_jobs/views/companies/companysinglepage.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'COMPANY',
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
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: companyContent.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => SingleCompanyScreen(
                            companylogo: companyContent[index].image.toString(),
                          ));
                    },
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
                            image: AssetImage(
                                companyContent[index].image.toString()),
                            height: 25,
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
                          const SizedBox(height: 20),
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
    );
  }
}
