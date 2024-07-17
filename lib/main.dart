import 'package:flutter/material.dart';
import 'package:mwm/Guest/1_guest_page.dart';
import 'package:mwm/Home/Grid/2_weekly_workbook.dart';
import 'package:mwm/Home/Grid/2_weekly_workbook/1_pdf.dart';
import 'package:mwm/Home/Grid/8_podcast.dart';
import 'package:mwm/Home/Matrixs/1_heart_rate/heart_rate_main.dart';
import 'Home/Botton_nav/shop.dart';
import 'Home/Profile/Edit_profile.dart';
import 'Home/Profile/Profile.dart';
import 'Splash_screen/Splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'Home/home_page.dart';
import 'Auth/Register.dart';
import 'Home/Grid/4_audio_books_video/4_now_playing.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Mulish'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

