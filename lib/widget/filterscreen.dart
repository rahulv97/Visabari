import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int start = 10;
  int end = 30;
  List experienceList = [
    'Entry Level',
    'Mid Level',
    'Senior Level',
  ];
  int select = 0;
  bool isRember = false;
  bool isRember2 = false;
  bool isRember3 = false;
  bool isRember4 = false;
  bool isRember5 = false;
  bool isRember6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'FILTER',
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
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.70,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [BoxShadow(color: grey, blurRadius: 5)],
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Salary Range',
                  style: TextDesign().bigtext,
                ),
                const SizedBox(width: 20),
                CupertinoButton(
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Select Range',
                              style: TextDesign().smallgreytext),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 25,
                            color: grey,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {}),
              ],
            ),
            const SizedBox(height: 20),
            RangeSlider(
              activeColor: downColor,
              inactiveColor: grey.withOpacity(0.5),
              values: RangeValues(start.toDouble(), end.toDouble()),
              // labels: RangeLabels(start.toString(), end.toString()),
              onChanged: (value) {
                setState(() {
                  start = value.start.toInt();
                  end = value.end.round();
                });
              },
              min: 10,
              max: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: grey),
                    ),
                    child: Center(
                      child: Text(
                        '\$ ' '${start.toString()}' 'k',
                        style: TextDesign().clrtext,
                      ),
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: grey),
                    ),
                    child: Center(
                      child: Text(
                        '\$ ' '${end.toString()}' 'k',
                        style: TextDesign().clrtext,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Job Type',
              style: TextDesign().headingtext,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 130,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember,
                                onChanged: (value) {
                                  setState(() => isRember = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "full Time (52)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember2,
                                onChanged: (value) {
                                  setState(() => isRember2 = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "Contract (521)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember3,
                                onChanged: (value) {
                                  setState(() => isRember3 = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "Freelancer (52)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 70),
                SizedBox(
                  height: 100,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember4,
                                onChanged: (value) {
                                  setState(() => isRember4 = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "Part Time (52)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember5,
                                onChanged: (value) {
                                  setState(() => isRember5 = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "Internship (152)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: const CircleBorder(),
                                value: isRember6,
                                onChanged: (value) {
                                  setState(() => isRember6 = value!);
                                },
                                activeColor: blue,
                              ),
                            ),
                            Text(
                              "Commission (520)",
                              style: TextDesign().filtertext,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Experience Level',
                style: TextDesign().headingtext,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: experienceList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              select = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              experienceList[index].toString(),
                              // ignore: unnecessary_null_comparison
                              style: select != null && select == index
                                  ? TextDesign().clrtext
                                  : TextDesign().lighttext,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CupertinoButton(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.55,
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
                            'SHOW RESULT',
                            style: TextDesign().appbartext,
                          ),
                        ),
                      ),
                      onPressed: () {}),
                  const SizedBox(width: 10),
                  CupertinoButton(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.2),
                                blurRadius: 2,
                              ),
                            ]),
                        child: Center(
                          child: Text(
                            'Clear',
                            style: TextDesign().bigbuttontext,
                          ),
                        ),
                      ),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void dropDown(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: const EdgeInsets.all(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Text('Yearly'),
            Text('Monthly'),
            Text('Hourly'),
            Text('Weekly'),
          ],
        ),
      );
    },
  );
}
