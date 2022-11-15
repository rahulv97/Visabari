import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:dear_jobs/views/profile/editprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter { male, female }

class ShowProfile extends StatefulWidget {
  const ShowProfile({Key? key}) : super(key: key);

  @override
  State<ShowProfile> createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  SingingCharacter? _character = SingingCharacter.male;

  List skill = [
    'Flutter',
    'Flutter',
    'Flutter',
    'Flutter',
    'Flutter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: downColor,
        centerTitle: true,
        title: Text(
          'PROFILE',
          style: TextDesign().appbartext,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  color: downColor,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/userimage.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Mark Gutierrez',
                        style: TextDesign().appbartext,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'MarkGutierrez@gmail.com',
                        style: TextDesign().emailtext,
                      ),
                      // const SizedBox(height: 10),
                      CupertinoButton(
                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: white),
                            child: Center(
                              child: Text('MY RESUME',
                                  style: TextDesign().drawericontext),
                            ),
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BASIC INFORMATION',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const EditProfile());
                        },
                        child: Text(
                          'Edit',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Mark",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                        Row(
                          children: [
                            Text(
                              'Gender',
                              style: TextDesign().lighttext,
                            ),
                            const SizedBox(width: 30),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.6,
                                  child: Radio<SingingCharacter>(
                                    value: SingingCharacter.male,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                const Text("Male"),
                              ],
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.6,
                                  child: Radio<SingingCharacter>(
                                    value: SingingCharacter.female,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                const Text("Female"),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Date of Birth',
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "12",
                                    style: TextDesign().lighttext,
                                  ),
                                  const SizedBox(width: 20),
                                  Icon(
                                    Icons.calendar_month,
                                    color: grey,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "October",
                                    style: TextDesign().lighttext,
                                  ),
                                  const SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: grey,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1997",
                                    style: TextDesign().lighttext,
                                  ),
                                  const SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Phone Number",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "123-456-7890",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                        const SizedBox(height: 10),
                        Text(
                          "Email Adress",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Mark@gmail.com",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LOCATION',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const EditProfile());
                        },
                        child: Text(
                          'Edit',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home Address",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "2071 Cambridge",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Country",
                                    style: TextDesign().lighttext,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "INDIA",
                                    style: TextDesign().headingtext,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Zip COde",
                                    style: TextDesign().lighttext,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "123456",
                                    style: TextDesign().headingtext,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(thickness: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EDUCATION',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const EditProfile());
                        },
                        child: Text(
                          'Edit',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "College",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Chandigarh University",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                        const SizedBox(height: 10),
                        Text(
                          "High School Degree",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Chandigarh University",
                          style: TextDesign().headingtext,
                        ),
                        const Divider(thickness: 1),
                        const SizedBox(height: 10),
                        Text(
                          "Higher Secondary Education",
                          style: TextDesign().lighttext,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Chandigarh University",
                          style: TextDesign().headingtext,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SKILLS',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const EditProfile());
                        },
                        child: Text(
                          'Edit',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: skill.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2.5, crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 80,
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
                                    skill[index],
                                    style: TextDesign().smallwhiteboldtext,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MY RESUME',
                        style: TextDesign().bigtext,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const EditProfile());
                        },
                        child: Text(
                          'Edit',
                          style: TextDesign().clrtext,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/userimage.png"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mark',
                                    style: TextDesign().headingtext,
                                  ),
                                  const SizedBox(width: 158),
                                  Icon(
                                    Icons.more_vert,
                                    color: grey,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Update on 22 June 2022',
                                style: TextDesign().smallgreytext,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
