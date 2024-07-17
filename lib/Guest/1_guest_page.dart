import 'package:mwm/Auth/Register.dart';
import 'package:mwm/Guest/2_guest_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mwm/Home/Grid/6_recipes_ideas/2_recipes_ideas.dart';
import 'package:mwm/Home/Grid/7_daily_inspiration.dart';
import 'package:mwm/Home/Grid/8_podcast.dart';
import 'package:mwm/main.dart';

//this code is developed by Ayush

class GuestPage extends StatefulWidget {
  const GuestPage({Key? key}) : super(key: key);


  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  List ico = [
    'assets/images/podcast.png',
    'assets/images/recipe-book.png',
    'assets/images/inspiration.png',
  ];

  List ico_la_up = [
    'Podcasts',
    'Recipes Ideas',
    'Daily Inspiration',
  ];

  List access_icon = [
    'assets/images/voice-control.png',
    'assets/images/call-center-agent.png',
    'assets/images/note.png',
    'assets/images/note-book.png',
    'assets/images/audio-book.png'
  ];

  List access_text = [
    'Audio Programmes',
    'Exercise & Pilates',
    'Healthy Meal Plan',
    'Weekly Workbook & Assist',
    'Audio Books & Video'
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

  List btn_ico = ['assets/icon/phone.png', 'assets/icon/assessment.png'];

  List btn_text = ['Request Callback', 'Book Assessment'];

  int _curre_ = 0;


  List<Widget> body = const [
    ////// comment for Navigation ///////////////////////////////////////////////////////////////////
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'this is under con..',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                 // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  width: screen.size.width,
                  height: screen.size.height * 0.18,

                  decoration: BoxDecoration(
                    color: Color.fromRGBO(112, 43, 146, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:screen.size.height*ht(60), left: screen.size.width*wt(20)),
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
                              'Guest1',
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
                  padding:EdgeInsets.only(top:screen.size.height*ht(70) , left: screen.size.width*wt(355)),
                  child: Container(
                    width: screen.size.width*wt(54),
                    height:  screen.size.height*ht(54),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: InkWell(
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => GuestRegister(),
                        );
                      },
                      child: Image.asset(
                        'assets/images/user 1.png',
                      ),
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
                      padding: EdgeInsets.symmetric(horizontal: screen.size.width *wt(20)),
                      child: Column(
                        children: [
                          GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7.0,
                              mainAxisSpacing: 7.0,
                              mainAxisExtent: 70,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Podcast()));
                                      }
                                    case 1:
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RecipesIdeas()));
                                      }
                                    case 2:
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DailyInspiration()));
                                      }
                                  }
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      ico[index],
                                      height: screen.size.height*ht(34) ,
                                      width: screen.size.width*wt(34),
                                    ),
                                    SizedBox(
                                      width: screen.size.width*wt(4),
                                    ),
                                    Expanded(
                                      child: Text(
                                        ico_la_up[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mulish',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screen.size.width*wt(4),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
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
                    Container(
                      margin: EdgeInsets.only(top:screen.size.height *ht(28),left:screen.size.width*wt(20)),
                      child: Row(
                        children: [
                          Text(
                            'Sign in to access these features',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: screen.size.width * 0.023,
                          ),
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: access_icon.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left:screen.size.width*wt(20), right: screen.size.width*wt(10)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              showModalBottomSheet<void>(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => GuestRegister(),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical:screen.size.height*ht(15)),
                              child: Container(
                                width: screen.size.width*wt(388),
                                height: screen.size.height*ht(60),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: screen.size.width *wt(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              access_icon[index],
                                              height: screen.size.height*ht(34),
                                              width: screen.size.width*wt(34),
                                            ),
                                            SizedBox(
                                              width:  screen.size.width*wt(20),
                                            ),
                                            Text(
                                              access_text[index],
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    74, 74, 74, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: screen.size.height*ht(10)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screen.size.width *wt(20)),
                        child: Row(
                          children: [
                            Text(
                              'Metrics',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width:  screen.size.width*wt(10),
                            ),
                            Icon(
                              Icons.lock,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screen.size.height * ht(1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (context) => GuestRegister(),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(238, 238, 238, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20)),
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
                                                height:   screen.size.height*ht(44),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:   screen.size.height*ht(30),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: screen.size.width*wt(15)),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    ros[index],
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            74, 74, 74, 1),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'Mulish',
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      ros2[index],
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'Mulish',
                                                          fontSize: 18),
                                                    ),
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
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:screen.size.height*ht(20)),

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

                              width: screen.size.width * wt(24),
                              height: screen.size.height * ht(24),
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
            SizedBox(height:screen.size.height*ht(10)),
          ],
        ),

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