import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mwm/Home/Profile/Profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _fn = 'Max';
  final _ln = 'Payne';
  final _em = 'abc@gmail.com';
  ImagePicker picker = ImagePicker();
  // XFile? image = await picker.pickImage(source: ImageSource.gallery);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This is Develop by SaHil..',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 428,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Color.fromRGBO(112, 43, 146, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60,
                        left: 20,
                      ),
                      child: Container(
                        width: 210,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(90),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 105, right: 20),
                      child: Container(
                        color: Colors.grey,
                        width: 388,
                        height: 0.1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 125),
                      child: Center(
                          child: Image.asset('assets/images/edit_girl.png',
                              height: 150, width: 150)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 221, left: 200),
                      child: InkWell(
                        onTap: null,
                        child: Image.asset(
                          'assets/images/blur_img.png',
                          height: 44,
                          width: 44,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 230, left: 210),
                      child: InkWell(
                        onTap: null,
                        child: Image.asset(
                          'assets/images/cam_imp.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    )
                  ],

                  /// here add image picker code/////////////////////////////////////////////////////////////////////////
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextField(
                          controller: TextEditingController(text: _fn),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('First Name')),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: TextEditingController(text: _ln),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Last Name')),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: TextEditingController(text: _em),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Email id'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170, left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(112, 43, 146, 1),
                    )),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          'SAVE',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Mulish',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
