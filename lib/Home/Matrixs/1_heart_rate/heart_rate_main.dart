import 'package:flutter/material.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:mwm/Home/Matrixs/1_heart_rate/1_chart_heart_rate/heart_rate.dart';

import 'add_heart_rate.dart';

//this code is developed by Ayush

class HeartRateMain extends StatefulWidget {
  const HeartRateMain({super.key});

  @override
  State<HeartRateMain> createState() => _HeartRateMainState();
}

class _HeartRateMainState extends State<HeartRateMain> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          backgroundColor: Color.fromRGBO(102, 29, 137, 1),
          foregroundColor: Colors.white,
          title: Text("Heart Rate",
            style:TextStyle(fontSize: 20,
                fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              /// Error

              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(right: screen.size.width * wt(20)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: screen.size.height * ht(141),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(251, 244, 255, 1),
                          ),
                          margin: EdgeInsets.only(
                              top: screen.size.height * ht(20),
                              left: screen.size.width * wt(20)),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: screen.size.height * ht(15),
                                          left: screen.size.width * wt(15)),
                                      //color: Colors.yellow,
                                      child: Text(
                                        'Average BPM',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screen.size.width * wt(18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: screen.size.height * ht(15),
                                          left: screen.size.width * wt(15)),
                                      //color: Colors.green,
                                      child: Text(
                                        '70',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: screen.size.width * wt(40),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: screen.size.height * ht(141),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(150, 150, 150, 230),
                          ),
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15, left: 15),
                                    //color: Colors.yellow,
                                    child: Text(
                                      'Standards Limits',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screen.size.width * wt(18)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    //color: Colors.green,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              screen.size.width * wt(10)),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Pulse Rate : ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  screen.size.width * wt(16),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                  height: screen.size.height *
                                                      ht(18)),
                                              Row(
                                                children: [
                                                  Text('60 - 100'),
                                                ],
                                              ),
                                              Row(
                                                children: [Text('bpm')],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * ht(25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: _mediaQuery.size.height * ht(50),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Color.fromRGBO(74, 74, 74, 1),
                          // indicatorColor: Colors.black,
                          // indicatorWeight: 2,
                          dividerHeight: 0,


                          indicator: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(90),

                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              text: 'Weekly',
                            ),
                            Tab(
                              text: 'Monthly',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    //content for weekly
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screen.size.width * wt(20),
                          vertical: screen.size.height * ht(10)),
                      child: Container(
                        width: screen.size.width * wt(388),
                        height: screen.size.height * ht(20),
                        //color: Colors.yellow,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/Ellipse 91.png',
                                        width: screen.size.width * wt(8),
                                        height: screen.size.height * ht(8),
                                      ),
                                      Text(
                                        'BPM',
                                        style: TextStyle(
                                          fontSize: screen.size.width * wt(16),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HeartRate()));
                                    },
                                    child: Text(
                                      'view graph data',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: screen.size.width * wt(16),
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(112, 43, 146, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screen.size.height * ht(10),
                            ),
                            Image.asset('assets/images/Group 1000002378.png'),
                            Container(
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Today, Aug 19',
                                        style: TextStyle(
                                          fontSize: screen.size.width * wt(20),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screen.size.height * ht(10),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pulse Rate: ',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              '72 BPM',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '03:30 PM',
                                          style: TextStyle(
                                            fontSize:
                                                screen.size.width * wt(16),
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Color.fromRGBO(112, 43, 146, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: screen.size.height * ht(5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pulse Rate: ',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              '71 BPM',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '01:15 PM',
                                          style: TextStyle(
                                            fontSize:
                                                screen.size.width * wt(16),
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Color.fromRGBO(112, 43, 146, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: screen.size.height * ht(5),
                                  ),
                                  SizedBox(
                                    height: screen.size.height * ht(30),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) => AddHeartRate(),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Color.fromRGBO(112, 43, 146, 1),
                                      backgroundColor:
                                          Color.fromRGBO(251, 244, 255, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            100), // Adjust the radius as needed
                                      ),
                                      minimumSize: Size(350, 48),
                                    ),
                                    child: Text('ADD NEW'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //content for monthly
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screen.size.width * wt(20),
                          vertical: screen.size.height * ht(10)),
                      child: Container(
                        width: screen.size.width * wt(388),
                        height: screen.size.height * ht(20),
                        //color: Colors.yellow,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/Ellipse 91.png',
                                        width: screen.size.width * wt(8),
                                        height: screen.size.height * ht(8),
                                      ),
                                      Text(
                                        'BPM',
                                        style: TextStyle(
                                          fontSize: screen.size.width * wt(16),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HeartRate()));
                                    },
                                    child: Text(
                                      'view graph data',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: screen.size.width * wt(16),
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(112, 43, 146, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screen.size.height * ht(20),
                            ),
                            Image.asset('assets/images/Group 1000002378.png'),
                            Container(
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: screen.size.height * ht(20),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Today, Aug 19',
                                        style: TextStyle(
                                          fontSize: screen.size.width * wt(20),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screen.size.height * ht(5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pulse Rate: ',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              '72 BPM',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '03:30 PM',
                                          style: TextStyle(
                                            fontSize:
                                                screen.size.width * wt(16),
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Color.fromRGBO(112, 43, 146, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: screen.size.height * ht(5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pulse Rate: ',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              '71 BPM',
                                              style: TextStyle(
                                                fontSize:
                                                    screen.size.width * wt(16),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '01:15 PM',
                                          style: TextStyle(
                                            fontSize:
                                                screen.size.width * wt(16),
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Color.fromRGBO(112, 43, 146, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: screen.size.height * ht(5),
                                  ),
                                  // SizedBox(
                                  //   height: screen.size.height*ht(10),
                                  // ),
                                  ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) => AddHeartRate(),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Color.fromRGBO(112, 43, 146, 1),
                                      backgroundColor:
                                          Color.fromRGBO(251, 244, 255, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            100), // Adjust the radius as needed
                                      ),
                                      minimumSize: Size(350, 48),
                                    ),
                                    child: Text('ADD NEW',
                                      style:TextStyle(fontSize: 16,
                                          fontWeight: FontWeight.w700),),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double ht(int a) {
  return a / 926;
}

double wt(int a) {
  return a / 428;
}
