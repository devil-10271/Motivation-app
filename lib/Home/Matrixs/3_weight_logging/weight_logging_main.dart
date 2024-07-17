import 'package:mwm/Home/Matrixs/3_weight_logging/add_weight.dart';
import 'package:flutter/material.dart';
import 'package:mwm/Home/Matrixs/3_weight_logging/weight_logging.dart';

//this code is developed by Ayush

class WeightLoggingMain extends StatefulWidget {
  const WeightLoggingMain({super.key});

  @override
  State<WeightLoggingMain> createState() => _WeightLoggingMainState();
}

class _WeightLoggingMainState extends State<WeightLoggingMain> {
  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,size: 20,),),
          backgroundColor: Color.fromRGBO(102, 29, 137, 1),
          foregroundColor: Colors.white,
          title: Text("Weight logging"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(

                  width: screen.size.width*wt(189),
                  height: screen.size.height*ht(141),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(251, 244, 255, 1),
                  ),
                  margin: EdgeInsets.only(top: 15, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: screen.size.height*ht(15), left: screen.size.width*wt(15) ),
                            //color: Colors.yellow,
                            child: Text(
                              'Average Weight',
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
                            margin: EdgeInsets.only(top: screen.size.height*ht(15), left: screen.size.width*wt(15) ),
                            //color: Colors.green,
                            child: Text(
                              '61.82kg',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               
              ],
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
            SizedBox(height: screen.size.height*ht(10)),
            Expanded(
              child: TabBarView(
                children: [
                  //content for weekly
                  SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                      child: Container(
                        // color: Colors.red,
                        //margin: EdgeInsets.only(top: 15),
                    
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
                                        'assets/icon/green_dot.png',
                                        width: screen.size.width*wt(8),
                                        height: screen.size.height*ht(8),
                                      ),
                                      Text(
                                        'Weight(kg)',
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
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>WeightLogging()));},
                                    child: Text(
                                      'view graph data',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(112, 43, 146, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/graph_weight.png'),
                            SizedBox(
                              height: screen.size.height*ht(25),
                            ),
                            Container(
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screen.size.height*ht(5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'Weight: ',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              '62.85kg',
                                              style: TextStyle(
                                                fontSize: 16,
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Color.fromRGBO(112, 43, 146, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: screen.size.height*ht(5),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Container(
                                  //       child: Row(
                                  //         children: [
                                  //           Text(
                                  //             'Pulse Rate: ',
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.w300,
                                  //             ),
                                  //           ),
                                  //           Text(
                                  //             '71 BPM',
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.w400,
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     Container(
                                  //       child: Text(
                                  //         '01:15 PM',
                                  //         style: TextStyle(
                                  //           fontSize: 16,
                                  //           fontWeight: FontWeight.w300,
                                  //           color: Color.fromRGBO(
                                  //               112, 43, 146, 1),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  // Divider(height: 5,),
                                  SizedBox(
                                    height: screen.size.height*ht(20),
                                  ),
                    
                                  ElevatedButton(
                                    onPressed: () {
                    
                                      print("hello");
                                      showModalBottomSheet<void>(
                                        isScrollControlled: true,
                                        // enableDrag: true,
                                        context: context,
                                        builder: (context) => AddWeight(),
                                      );
                                      // showBottomSheet(context: context,
                                      //   builder: (context) {
                                      //   return AddWeight();
                                      // },);
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
                    ),
                  ),
                  //content for monthly page
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20)),
                    child: Container(
                      color: Colors.white,
                      //margin: EdgeInsets.only(top: 15),
                      width: screen.size.width*wt(388),
                      height: screen.size.height*ht(20),
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
                                      'assets/icon/green_dot.png',
                                      width: screen.size.width*wt(8),
                                      height: screen.size.height*ht(8),
                                    ),
                                    Text(
                                      'Weight(kg)',
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
                                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>WeightLogging()));},
                                  child: Text(
                                    'view graph data',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(112, 43, 146, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/graph_weight.png'),
                          SizedBox(
                            height: screen.size.height*ht(25),
                          ),
                          Container(
                            //color: Colors.yellow,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screen.size.height*ht(5),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Weight: ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '62.85kg',
                                            style: TextStyle(
                                              fontSize: 16,
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color:
                                          Color.fromRGBO(112, 43, 146, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: screen.size.height*ht(5),
                                ),
                                SizedBox(
                                  height: screen.size.height*ht(20),
                                ),

                                ElevatedButton(
                                  onPressed: () {

                                    print("hello");
                                    showModalBottomSheet<void>(
                                      isScrollControlled: true,
                                      // enableDrag: true,
                                      context: context,
                                      builder: (context) => AddWeight(),
                                    );
                                    // showBottomSheet(context: context,
                                    //   builder: (context) {
                                    //   return AddWeight();
                                    // },);
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
                  ),
                ],
              ),
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