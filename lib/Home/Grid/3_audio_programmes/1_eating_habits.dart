import 'package:flutter/material.dart';

class EatingHabits extends StatefulWidget {
  const EatingHabits({Key? key}) : super(key: key);

  @override
  _EatingHabitsState createState() => _EatingHabitsState();
}


 
 
class _EatingHabitsState extends State<EatingHabits> {
  int selectedIndex = -1;

  final List<Map<String, String>> podcastData = [
    {
      'imagePath': 'assets/images/podcast_1.png',
      'title': 'Day 1',
      'description': '12.58 mins . 1 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_2.png',
      'title': 'Day 2',
      'description': '30:24 mins . 2 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_3.png',
      'title': 'Day 3',
      'description': '22:44 mins . 4 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_1.png',
      'title': 'Day 4',
      'description': '12.58 mins . 1 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_2.png',
      'title': 'Day 5',
      'description': '30:24 mins . 2 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_3.png',
      'title': 'Day 6',
      'description': '22:44 mins . 4 year ago'
    },
    // Add more podcast data here
  ];

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
          title: Text("Change your Eating Habits",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    // padding: EdgeInsets.only(top: 112), // Adjust the top padding as needed
                    itemCount: podcastData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 400,
                        height: 213,
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 350,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(podcastData[index]['imagePath']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 124,
                                  right: 4,
                                  child: Container(
                                    width: 40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/youtube.png',
                                            width: 25,
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                podcastData[index]['title']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                podcastData[index]['description']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


