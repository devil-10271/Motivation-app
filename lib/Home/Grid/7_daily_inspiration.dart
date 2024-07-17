import 'package:flutter/material.dart';
import 'package:mwm/Home/home_page.dart';

class DailyInspiration extends StatelessWidget {
  const DailyInspiration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        backgroundColor: Color.fromRGBO(102, 29, 137, 1),
        foregroundColor: Colors.white,
        title: Text("Daily Inspiration",
          style:TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(

        // color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(15),vertical:screen.size.height*ht(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [



                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote5.jpg',

                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote7.jpg',

                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote3.jpg',

                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote4.jpg',

                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote1.jpg',


                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote6.jpg',


                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote2.jpg',


                      ),
                    ],
                  ),
                ),
                SizedBox(height: screen.size.height*ht(10)),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/quote8.jpg',


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



