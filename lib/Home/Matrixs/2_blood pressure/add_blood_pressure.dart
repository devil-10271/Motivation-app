import 'package:flutter/material.dart';
import 'package:mwm/Home/Matrixs/2_blood%20pressure/blood_pressure_main.dart';

//this code is developed by Ayush

class AddBloodPressure extends StatefulWidget {
  const AddBloodPressure({super.key});

  @override
  State<AddBloodPressure> createState() => _AddBloodPressureState();
}

class _AddBloodPressureState extends State<AddBloodPressure> {
  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          width: 428,
          height: 466,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Blood Pressure Reading',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                  //color: Colors.red,
                  width: 388,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Systolic (mmHg)',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
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
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  //color: Colors.red,
                  width: 388,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Diastolic (mmHg)',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
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
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  //color: Colors.red,
                  width: 388,
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pulse Rate (mmHg)',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: screen.size.width*wt(18), vertical: screen.size.height*ht(40)),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(234, 234, 234, 1)),
                        ),
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(
                                horizontal: screen.size.width*wt(39), vertical: screen.size.height*ht(10)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BloodPressureMain()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(112, 43, 146, 1)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screen.size.width*wt(39), vertical: screen.size.height*ht(10)),
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
    );
  }
}
double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}
