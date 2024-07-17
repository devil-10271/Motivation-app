import 'package:flutter/material.dart';
import 'package:mwm/Home/home_page.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
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
    var screen=MediaQuery.of(context);
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
          title: Text("Exercise & Pilates"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(
                        top: screen.size.height*ht(12)), // Adjust the top padding as needed
                    itemCount: podcastData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width:  screen.size.width*wt(400),
                        height:  screen.size.height*ht(220),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical:  screen.size.height*ht(10)),
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
                                  width:  screen.size.width*wt(379),
                                  height: screen.size.height*ht(155),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          podcastData[index]['imagePath']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: screen.size.height*ht(124),
                                  right:  screen.size.width*wt(4),
                                  child: Container(
                                    width:  screen.size.width*wt(40),
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
                                            width:  screen.size.width*wt(25),
                                            height: screen.size.height*ht(30),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screen.size.height*ht(4)),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal:  screen.size.width*wt(15)),
                              child: Text(
                                podcastData[index]['title']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: screen.size.height*ht(1)),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal:  screen.size.width*wt(15)),
                              child: Text(
                                podcastData[index]['description']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(height: screen.size.height*ht(10)),
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

double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}