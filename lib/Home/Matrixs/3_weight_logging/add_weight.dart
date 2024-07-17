import 'package:flutter/material.dart';

class AddWeight extends StatefulWidget {
  const AddWeight({super.key});

  @override
  State<AddWeight> createState() => _AddWeightState();
}

class _AddWeightState extends State<AddWeight> {
  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return SingleChildScrollView(

      child: Padding(
        padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30,),
              Center(
                child: Text(
                  'Weight Measurement',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),              ),

              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                //color: Colors.red,
                width: 388,
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Container(

                      child: Text(
                        '29 - 05 - 2024',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
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
                width: 388,
                height: 1,
                color: Color.fromRGBO(234, 234, 234, 1),
                margin: EdgeInsets.only(top: 15),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                //color: Colors.red,
                width: 388,
                height: 54,
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
                            fontSize: 18, fontWeight: FontWeight.w400),
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
                width: 388,
                height: 1,
                color: Color.fromRGBO(234, 234, 234, 1),
                margin: EdgeInsets.only(top: 15),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                //color: Colors.red,
                width: 388,
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weight (kg)',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 100,
                      height: 54,
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
                width: 388,
                height: 1,
                color: Color.fromRGBO(234, 234, 234, 1),
                margin: EdgeInsets.only(top: 15),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                    horizontal: screen.size.height*ht(18), vertical: screen.size.height*ht(40)),
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
                              horizontal: screen.size.height*ht(40), vertical:screen.size.height*ht(10) ),
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
                      width: screen.size.height*ht(10),
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
                          padding:  EdgeInsets.symmetric(
                              horizontal:screen.size.height*ht(40), vertical: screen.size.height*ht(10)),
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
    );
  }
}
double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}