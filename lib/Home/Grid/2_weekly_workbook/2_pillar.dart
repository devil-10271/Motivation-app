import 'package:flutter/material.dart';

class PillarPage extends StatefulWidget {
   @override
   State<StatefulWidget> createState() {
     return PillarPageState();
   }
 }
class PillarPageState extends State<PillarPage> {

  final List<String> items = [
    'Healthy Men at All Ages',
    'Healthy Back to School Recipes',
    'The Weight & Cancer Report',
    'Lets Talk About Booze',
    'The Truth About Sugar',
    'How to Quit Smoking',
    'Diets from Around the World',
    'Will Meditation Help You to Lose...',
    'The Power of Good Habits',
    'Healthy Men at All Ages',
    'Healthy Back to School Recipes',
    'The Weight & Cancer Report',
    'Lets Talk About Booze',
    'The Truth About Sugar',
    'How to Quit Smoking',
    'Diets From Around the World',
    'Will Meditation Help You to Lose...',
    'The Power of Good Habits',
  ];
  final List<String> iconPaths = List.generate(18, (index) => 'assets/images/pdf.png');
  final List<String> iconPaths2 = List.generate(18, (index) => 'assets/images/download.png');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
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
            title: Text("Pillar",
              style:TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w700),),
            centerTitle: true,
          ),

          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  //shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:5, horizontal:15),
                      child: Container(
                        width: 388,
                        height: 60,
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal:15),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(150,150,150,230),
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
                            SizedBox(width:20),
                            Expanded(

                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize:16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
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
                    );
                  },

                ),
              ),

            ],
          ),
        ),
    );

  }

}