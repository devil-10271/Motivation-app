import 'package:mwm/Home/Matrixs/2_blood pressure/add_blood_pressure.dart';
import 'package:flutter/material.dart';
import 'package:mwm/Home/Matrixs/2_blood%20pressure/list_bp.dart';
import 'package:mwm/Home/home_page.dart';

class BloodPressureMain extends StatefulWidget {
  const BloodPressureMain({super.key});

  @override
  State<BloodPressureMain> createState() => _GraphBpState();
}

class _GraphBpState extends State<BloodPressureMain> {
  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          backgroundColor: Color.fromRGBO(102, 29, 137, 1),
          foregroundColor: Colors.white,
          title: Text("Blood Pressure",
            ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: screen.size.width*wt(155),
                        height: screen.size.height*ht(141),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(251, 244, 255, 1),
                        ),
                        margin: EdgeInsets.only(top: screen.size.height*ht(20), left:  screen.size.width*wt(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: screen.size.height*ht(15), left:  screen.size.width*wt(15)),
                                  child: Text(
                                    'Average BPM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: screen.size.height*ht(15), left:  screen.size.width*wt(15)),
                                  child: Text(
                                    '70',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: screen.size.width*wt(170),
                        height: screen.size.height*ht(141),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(150, 150, 150, 230)),
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: screen.size.height*ht(15), left: screen.size.width*wt(15)),
                                  child: Text(
                                    'Standard Limits',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: screen.size.height*ht(9), left: screen.size.width*wt(10)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Systolic: <120 mmHg\nDiastolic: <80 mmHg\nPulse Rate: 70 bpm',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(145, 145, 145, 1),
                                        ),
                                      ),
                                    ],
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
              SizedBox(
                height: screen.size.height*ht(25),
              ),
              Container(
                height: screen.size.height*ht(720), // Adjust height as needed
                child: TabBarView(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/blue.png',
                                      width: screen.size.width*wt(8),
                                      height: screen.size.height*ht(8),
                                    ),
                                    Text(
                                      ' Systolic  ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/yellow.png',
                                      width: screen.size.width*wt(8),
                                      height: screen.size.height*ht(8),
                                    ),
                                    Text(
                                      ' Diastolic',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ListBp()));
                                  },
                                  child: Text(
                                    'view graph data',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(112, 43, 146, 1),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/graph.png'),
                          SizedBox(
                            height: screen.size.height*ht(5),
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text(
                                    'Today, Aug 19',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Systolic: 88 mmHg\nDiastolic: 120 mmHg\nPulse Rate: 70 bpm',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                          Text(
                                            '05:30 PM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  112, 43, 146, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(height: 5),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Systolic: 100 mmHg\nDiastolic: 100 mmHg\nPulse Rate: 65 bpm',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                          Text(
                                            '12:00 PM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: screen.size.height*ht(20)),
                                ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                        context: context,
                                        builder: (context) =>
                                            AddBloodPressure());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromRGBO(112, 43, 146, 1),
                                    backgroundColor:
                                        Color.fromRGBO(251, 244, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    minimumSize: Size(350, 54),
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
                    // Add similar structure for the Monthly tab if needed
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/blue.png',
                                      width: screen.size.width*wt(8),
                                      height: screen.size.height*ht(8),
                                    ),
                                    Text(
                                      ' Systolic  ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/yellow.png',
                                      width: screen.size.width*wt(8),
                                      height: screen.size.height*ht(8),
                                    ),
                                    Text(
                                      ' Diastolic',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ListBp()));
                                  },
                                  child: Text(
                                    'view graph data',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(112, 43, 146, 1),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/graph.png'),
                          SizedBox(
                            height: screen.size.height*ht(25),
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text(
                                    'Today, Aug 19',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Systolic: 88 mmHg\nDiastolic: 120 mmHg\nPulse Rate: 70 bpm',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                          Text(
                                            '05:30 PM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  112, 43, 146, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(height: screen.size.height*ht(5)),
                                    ],
                                  ),
                                ),
                                ListTile(
                                  subtitle: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Systolic: 100 mmHg\nDiastolic: 100 mmHg\nPulse Rate: 65 bpm',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                          Text(
                                            '12:00 PM',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  145, 145, 145, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: screen.size.height*ht(20)),
                                ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) =>
                                            AddBloodPressure());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                    Color.fromRGBO(112, 43, 146, 1),
                                    backgroundColor:
                                    Color.fromRGBO(251, 244, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    minimumSize: Size(350, 54),
                                  ),
                                  child: Text('ADD NEW'),
                                ),
                              ],
                            ),
                          ),
                        ],
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
double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}