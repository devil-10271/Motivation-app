import 'package:flutter/material.dart';

//this code is developed by Ayush

class AddHeartRate extends StatefulWidget {
  const AddHeartRate({super.key});

  @override
  State<AddHeartRate> createState() => _AddHeartRateState();
}

class _AddHeartRateState extends State<AddHeartRate> {
  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            width: screen.size.width*wt(428),
            height: screen.size.height*ht(526),
            child: Padding(
              padding:  EdgeInsets.only(top: screen.size.height*ht(35)),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Heart Rate Reading',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screen.size.height*ht(15), left:  screen.size.width*wt(20), right: screen.size.width*wt(20)),
                    //color: Colors.red,
                    width:  screen.size.width*wt(388),
                    height: screen.size.height*ht(34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          // width: 100,
                          // height: 54,
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.grey),
                          //   borderRadius: BorderRadius.circular(5),
                          // ),
                          child: Text(
                            '29 - 05 - 2024',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //   ),
                          //   keyboardType: TextInputType.number,
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //       fontSize: 20, fontWeight: FontWeight.w700),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screen.size.width*wt(388),
                    height: screen.size.height*ht(1),
                    color: Color.fromRGBO(234, 234, 234, 1),
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    //color: Colors.red,
                    width: screen.size.width*wt(388),
                    height: screen.size.height*ht(54),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          // width: 100,
                          // height: 54,
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.grey),
                          //   borderRadius: BorderRadius.circular(5),
                          // ),
                          child: Text(
                            '02:22 PM',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //   ),
                          //   keyboardType: TextInputType.number,
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //       fontSize: 20, fontWeight: FontWeight.w700),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screen.size.width*wt(388),
                    height: screen.size.height*ht(1),
                    color: Color.fromRGBO(234, 234, 234, 1),
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    //color: Colors.red,
                    width: screen.size.width*wt(388),
                    height: screen.size.height*ht(60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pulse Rate (bpm)',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: screen.size.width*wt(100),
                          height: screen.size.height*ht(54),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screen.size.width*wt(388),
                    height: screen.size.height*ht(1),
                    color: Color.fromRGBO(234, 234, 234, 1),
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screen.size.width*wt(12), vertical: screen.size.height*ht(60)),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(234, 234, 234, 1)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screen.size.width*wt(35), vertical: screen.size.height*ht(10)),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Color.fromRGBO(112, 43, 146, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screen.size.width*wt(10),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(112, 43, 146, 1)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screen.size.width*wt(45), vertical: screen.size.height*ht(10)),
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
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