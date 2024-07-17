import 'package:flutter/material.dart';

import 'add_blood_pressure.dart';

class BloodPressure extends StatelessWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text("Blood Pressure"
        , style:TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Container(
        //color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 155),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/blood-pressure.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => AddBloodPressure(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color.fromRGBO(112, 43, 146, 1),
                          backgroundColor: Color.fromRGBO(251, 244, 255, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                100), // Adjust the radius as needed
                          ),
                          minimumSize: Size(350, 54),
                        ),
                        child: Text('ADD NEW',
                          style:TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w700),),
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
