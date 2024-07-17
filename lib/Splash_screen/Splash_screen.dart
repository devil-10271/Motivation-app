import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mwm/Auth/Register.dart';
import 'package:mwm/Home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    var screenWidth = screenSize.size.width;
    var screenHeight = screenSize.size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This is Develop by SaHil..',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(254, 254, 254, 1),
        body: SingleChildScrollView(
          child: Column(
          
            children: [
              SizedBox(
                height: screenSize.size.height * 0.0161,
              ),
              Stack(
                children: [
                  
                  Image(image: AssetImage('assets/images/main_bg.png')),
                ],
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elevate Your',
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Wellness Voyag',
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 20,
                              color: Color.fromRGBO(112, 43, 146, 1),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                     width:  screenWidth * 0.47,
                      height: screenHeight * 0.08,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register(),));

                          return;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'EXPLORE',
                              style: TextStyle(
                                  color: Color.fromRGBO(112, 43, 146, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Image(
                              image: AssetImage('assets/images/bac_but.png'),
                              height: 10,
                              width: 25,
                            )
                          ],
                        ),
                         style: ButtonStyle(
                        //   backgroundColor: MaterialStateProperty.all(Color.fromRGBO(112, 43, 146, 0.10),),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45),
                                  bottomLeft: Radius.circular(45)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
