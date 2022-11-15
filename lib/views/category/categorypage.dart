import 'package:dear_jobs/model/allcategorymodel.dart';
import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'CATEGORIES',
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
          itemCount: categoryContent.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
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
                              categoryContent[index].image.toString()),
                          height: 25,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categoryContent[index].title.toString(),
                          style: TextDesign().smallboldtext,
                        ),
                        Text(
                            "("
                            '${categoryContent[index].jobcount}'
                            " Jobs)",
                            style: TextDesign().smallgreytext),
                        const SizedBox(height: 20),
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
