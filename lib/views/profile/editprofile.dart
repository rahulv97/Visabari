import 'package:dear_jobs/views/constant/colors.dart';
import 'package:dear_jobs/views/helpers/texthelpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter { male, female }

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
    return GestureDetector(
      onTap: () {
        return FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: black.withOpacity(0.6),
                            ),
                            child: Icon(
                              CupertinoIcons.camera,
                              size: 30,
                              color: white,
                            ),
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
                          onPressed: () {},
                          child: Text(
                            'Save',
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
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Full Name",
                              hintText: 'Enter name',
                            ),
                          ),
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
                          const SizedBox(height: 5),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Phone Number",
                              hintText: 'Enter number',
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Email Address",
                              hintText: 'Enter email',
                            ),
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
                          'LOCATION',
                          style: TextDesign().bigtext,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Save',
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Home Address",
                              hintText: 'Enter address',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Country",
                                    hintText: 'Enter Country',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              SizedBox(
                                width: 150,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Zip Code",
                                    hintText: 'Enter zip code',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
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
                          onPressed: () {},
                          child: Text(
                            'Save',
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
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "College",
                              hintText: 'Enter College',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "High School Degree",
                              hintText: 'Enter school',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Higher Secondary Education",
                              hintText: 'Enter school',
                            ),
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
                          onPressed: () {},
                          child: Text(
                            'Save',
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Skills",
                                hintText: 'Enter skills',
                              ),
                            ),
                          ),
                          GridView.builder(
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
                                          style:
                                              TextDesign().smallwhiteboldtext,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
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
                          'MY RESUME',
                          style: TextDesign().bigtext,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Upload',
                            style: TextDesign().clrtext,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              iconSize: 50,
                              color: grey,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Attach File From Phone',
                                style: TextDesign().headingtext,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '.pdf, doc ,txt, cdr,rtf accepted',
                                style: TextDesign().smallgreytext,
                              ),
                            ],
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
      ),
    );
  }
}
