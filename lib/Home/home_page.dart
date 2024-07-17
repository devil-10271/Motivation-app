import 'package:flutter/material.dart';
import 'package:mwm/Home/Grid/1_meal_plan.dart';
import 'package:mwm/Home/Grid/2_weekly_workbook.dart';
import 'package:mwm/Home/Grid/3_audio_programmes.dart';
import 'package:mwm/Home/Grid/4_audio_books_video.dart';
import 'package:mwm/Home/Grid/5_exercise_pilates.dart';
import 'package:mwm/Home/Grid/6_recipes.dart';
import 'package:mwm/Home/Grid/7_daily_inspiration.dart';
import 'package:mwm/Home/Grid/8_podcast.dart';
import 'Matrixs/1_heart_rate/heart_rate_main.dart';
import 'Matrixs/2_blood pressure/blood_pressure.dart';
import 'Matrixs/2_blood pressure/blood_pressure_main.dart';
import 'Profile/Profile.dart';
import 'package:mwm/Home/Matrixs/3_weight_logging/weight_logging_main.dart';
import 'package:mwm/Home/Matrixs/4_food_logging/food_logging.dart';
import 'package:mwm/Home/Botton_nav/shop.dart';
import 'package:mwm/Home/Botton_nav/text_page.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {


  List btn_ico = ['assets/icon/phone.png', 'assets/icon/assessment.png'];

  List btn_text = ['Request Callback', 'Book Assessment'];

  List ico = [
    'assets/images/note.png',
    'assets/images/note-book.png',
    'assets/images/voice-control.png',
    'assets/images/audio-book.png',
    'assets/images/call-center-agent.png',
    'assets/images/recipe-book.png',
    'assets/images/inspiration.png',
    'assets/images/podcast.png',
  ];

  List ico_la_up = [
    'Healthy Meal Plan',
    'Weekly Workbook & Assist',
    'Audio Programmers',
    'Audio Books & Video',
    'Exercise & Pilates',
    'Recipes Ideas',
    'Daily Inspiration',
    'Podcasts'
  ];

  List Matrics = [
    'assets/images/heart-attack.png',
    'assets/images/heart_rate.png',
    'assets/images/Weight_Machine.png',
    'assets/images/fruits.png'
  ];

  List bg_img = [
    'assets/images/line1.png',
    'assets/images/line2.png',
    'assets/images/line3.png',
    'assets/images/line4.png'
  ];

  List ros = ['Heart Rate', 'Blood Pressure', 'Weight Logging', 'Food Logging'];
  List ros2 = ['96 bpm', '120/80 mm Hg', '150.2 lbs (68.2 kg)', '350 gm'];


  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: screen.size.height*ht(10), horizontal: screen.size.width*wt(25)),
                width: screen.size.width ,
                height: screen.size.height*ht(156),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(112, 43, 146, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: screen.size.height*ht(60), left: screen.size.width*wt(20)),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hello 👋',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                fontFamily: 'Mulish'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Max Payne',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Mulish'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screen.size.height*ht(65), left: screen.size.width*wt(350)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Image.asset(
                    'assets/images/girl.png',
                    height: screen.size.height*ht(67),
                    width: screen.size.width*wt(67),
                  ),
                ),
              )
            ],
          ),
          // const SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                    child: Column(
                      children: [
                        GridView.builder(
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 74,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(150, 150, 150, 230)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))))),
                              onPressed: () {
                                switch (index) {
                                  case 0:
                                    {

                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealPlan(),));

                                      return;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MealPlan()));
                                    }
                                  case 1:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WeeklyWorkbook()));
                                    }
                                  case 2:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AudioProgrammes()));
                                    }
                                  case 3:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AudioVideo()));
                                    }
                                  case 4:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Exercise()));
                                    }
                                  case 5:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RecipesPage()));
                                    }
                                  case 6:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DailyInspiration()));
                                    }
                                  case 7:
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Podcast()));
                                    }
                                }
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    ico[index],
                                    height:  screen.size.height*ht(34),
                                    width: screen.size.width*wt(34),
                                  ),
                                  SizedBox(
                                    width:  screen.size.width*wt(4),
                                  ),
                                  Expanded(
                                    child: Text(
                                      ico_la_up[index],
                                       overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Mulish',
                                        fontSize: screen.size.width*wt(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:screen.size.width*wt(4),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: screen.size.width*wt(20),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screen.size.height*ht(10)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Metrics',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 7.0,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            switch (index) {
                              case 0:
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HeartRateMain()));
                                }
                              case 1:
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BloodPressure()));
                                }
                              case 2:
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WeightLoggingMain()));
                                }
                              case 3:
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FoodLogging()));
                                }
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(238, 238, 238, 1)),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(bg_img[index])),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(
                                              left: screen.size.width*wt(15), top: screen.size.height*ht(15)),
                                          child: Image.asset(
                                            Matrics[index],
                                            height:screen.size.height*ht(44),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screen.size.height*ht(30),
                                    ),
                                    Padding(
                                      padding:
                               EdgeInsets.only(left: screen.size.width*wt(15)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                ros[index],
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        74, 74, 74, 1),
                                                    fontWeight:
                                                    FontWeight.w400,
                                                    fontFamily: 'Mulish',
                                                    fontSize: screen.size.width*wt(16)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                ros2[index],
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,

                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    fontFamily: 'Mulish',
                                                    fontSize:screen.size.width*wt(18) ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: screen.size.height*ht(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screen.size.width * wt(20)),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(150, 150, 150, 230),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          side: BorderSide(
                            color: Color.fromRGBO(112, 43, 146, 1),
                          ),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screen.size.width * wt(8),
                        vertical: screen.size.height * ht(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            btn_ico[0],
                            width: screen.size.width * wt(24),
                            height: screen.size.height * ht(24),
                          ),
                          SizedBox(
                            width: screen.size.width * wt(4),
                          ),
                          Text(
                            btn_text[0],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: screen.size.width * wt(14),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screen.size.width * wt(6),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(150, 150, 150, 230),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          side: BorderSide(
                            color: Color.fromRGBO(112, 43, 146, 1),
                          ),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screen.size.width * wt(8),
                        vertical: screen.size.height * ht(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            btn_ico[1],
                            width: screen.size.width * wt(23),
                            height: screen.size.height * ht(23),
                          ),
                          SizedBox(
                            width: screen.size.width * wt(4),
                          ),
                          Expanded(

                            child: Text(
                              btn_text[1],

                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: screen.size.width * wt(14),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ),

                ),

              ],

            ),


          ),
          SizedBox(height: screen.size.height*ht(10)),
        ],

      ),

    );
  }
}




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curre_ = 0;
  List CALL = [Home_Page(), Shop(), TextPage()];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: CALL[_curre_],

      bottomNavigationBar: Container(

        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(112, 43, 146, 1),
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 25),
          unselectedItemColor: Colors.grey,
          currentIndex: _curre_,
          onTap: (int newIndex) {
            setState(() {
              _curre_ = newIndex;
            });
          },

          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: ImageIcon(AssetImage('assets/images/home.png')),
            ),
            BottomNavigationBarItem(
                label: 'Shop',
                icon: ImageIcon(AssetImage('assets/images/shop.png'))),
            BottomNavigationBarItem(
              label: 'Message',
              icon: ImageIcon(AssetImage('assets/images/comments.png')),
            ),
          ],
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