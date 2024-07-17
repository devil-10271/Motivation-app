

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mwm/Home/Profile/Edit_profile.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:mwm/Auth/Register.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _ga = false;
  bool _laa = false;
  bool _lbn = false;
  bool _ls = false;

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This is Develop by SaHil..',
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: screen.size.height*ht(210),
                      width: screen.size.width*wt(428),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Color.fromRGBO(112, 43, 146, 1),
                      ),
                    ),
                    Padding(
                      padding:
                       EdgeInsets.only(left: screen.size.width*wt(15), top: screen.size.height*ht(51), right: screen.size.width*wt(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(90),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios,size: 24,color: Colors.white,),),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfile()));
                              },
                              child: Icon(Icons.edit,color: Colors.white,)
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screen.size.height*ht(85), left: screen.size.width*wt(20)),
                      child: Container(
                        color: Colors.grey,
                        height: 0.3,
                        width: screen.size.width*wt(388),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 20),
                      child: Image.asset('assets/images/girl.png',
                          height: 110, width: 110),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110, left: 145),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Max Payne',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Mulish',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'max.payne@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Mulish',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Notification Settings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: screen.size.width*wt(388),
                  height: screen.size.height*ht(267),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Global Announcements',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              CupertinoSwitch(
                                value: _ga,
                                onChanged: (bool value) {
                                  setState(() {
                                    _ga = value;
                                  });
                                },
                                trackColor: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: screen.size.height*ht(1),
                          width: screen.size.width*wt(358),
                          color: Color.fromRGBO(225, 225, 225, 1),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Location Based Notifications',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              CupertinoSwitch(
                                value: _lbn,
                                onChanged: (bool value) {
                                  setState(() {
                                    _lbn = value;
                                  });
                                },
                                trackColor: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: screen.size.height*ht(1),
                          width: screen.size.width*wt(358),
                          color: Color.fromRGBO(225, 225, 225, 1),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Local Area Announcements',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              CupertinoSwitch(
                                value: _laa,
                                onChanged: (bool value) {
                                  setState(() {
                                    _laa = value;
                                  });
                                },
                                trackColor: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: screen.size.width*wt(20), right: screen.size.width*wt(35),top:screen.size.height*ht(15)),
                child: Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location Services',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: screen.size.width*wt(100),
                      ),
                      CupertinoSwitch(
                        value: _ls,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _ls = value;
                            },
                          );
                        },
                        trackColor: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screen.size.height*ht(100),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                child: ElevatedButton(
                  onPressed: null,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.delete,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: screen.size.width*wt(10),
                      ),
                      Text(
                        'Delete Account',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(74, 74, 74, 0.05)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))))),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20),vertical:screen.size.height*ht(8)),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.logout,
                        color: Color.fromRGBO(244, 69, 69, 1),
                      ),
                      SizedBox(
                        width: screen.size.width*wt(10),
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(color: Color.fromRGBO(244, 69, 69, 1)),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(244, 69, 69, 0.05)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}
