import 'package:flutter/material.dart';
import 'package:mwm/Home/home_page.dart';

class MealPlan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MealPlanState();
  }
}

class MealPlanState extends State<MealPlan> {
  final List<String> items = [
    'My Daily Dairy',
  ];
  final List<String> iconPaths = [
    'assets/images/bottle.png',
  ];

  final List<String> iconPaths2 = ['assets/images/backward.png'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          title: Text("Healthy Meal Plan"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Container(
                          width: 388,
                          height: 60,
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color:Color.fromRGBO(150, 150, 150, 230),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                iconPaths[index],
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Image.asset(
                                iconPaths2[index],
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
