import 'package:flutter/material.dart';

class RecipeVideos extends StatefulWidget {
  const RecipeVideos({Key? key}) : super(key: key);

  @override
  _RecipeVideosState createState() => _RecipeVideosState();
}

class _RecipeVideosState extends State<RecipeVideos> {
  int selectedIndex = 0;

  final List<String> items3 = [
    'All',
    'Chicken Recipe',
    'Egg Recipe',

  ];

  final List<Map<String, String>> podcastData = [
    {
      'imagePath': 'assets/images/recipe_1.png',
      'title': 'Beef Stroganoff Recipe',
      'description': '22:44 mins . Today'
    },
    {
      'imagePath': 'assets/images/recipe_2.png',
      'title': 'Buffalo Roasted Cauliflower',
      'description': '22:44 mins . 25 days ago'
    },
    {
      'imagePath': 'assets/images/recipe_3.png',
      'title': 'Chicken pea Lentil Curry Recipe',
      'description': '22:44 mins . 1 year ago'
    },
    {
      'imagePath': 'assets/images/recipe_1.png',
      'title': 'Beef Stroganoff Recipe',
      'description': '22:44 mins . Today'
    },
    {
      'imagePath': 'assets/images/recipe_2.png',
      'title': 'Buffalo Roasted Cauliflower',
      'description': '22:44 mins . 25 days ago'
    },
    {
      'imagePath': 'assets/images/recipe_3.png',
      'title': 'Chicken pea Lentil Curry Recipe',
      'description': '22:44 mins . 1 year ago'
    },


    // Add more podcast data here
  ];

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: screen.size.height*ht(114),
              width: screen.size.width*wt(428),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color.fromRGBO(112, 43, 146, 1),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: screen.size.height*ht(60), left: screen.size.width*wt(20), right: screen.size.width*wt(20)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: screen.size.width*wt(90),
                    ),
                    Text(
                      'Recipe Videos',
                      style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                width: screen.size.width*wt(388),
                height: screen.size.height*ht(40),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245,245,245,1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Podcast...',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Space for the purple container
                  Container(
                    height: screen.size.height*ht(150), // Adjust height as needed
                  ),
                  // Category List
                  Container(
                    height: screen.size.height*ht(50),
                    margin: EdgeInsets.only(top:  screen.size.height*ht(5)),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: items3.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(6),
                            height:  screen.size.height*ht(54),
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: selectedIndex == index
                                  ? Color.fromRGBO(112, 43, 146, 1)
                                  : Color.fromRGBO(245, 245, 245, 1),
                            ),
                            child: Center(
                              child: Text(
                                items3[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Podcast List
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top:  screen.size.height*ht(1)),
                      itemCount: podcastData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: screen.size.width*wt(400),
                          height: screen.size.height*ht(225),
                          margin: EdgeInsets.symmetric(horizontal: screen.size.width*wt(20), vertical:  screen.size.height*ht(10)),
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
                                    width: screen.size.width*wt(399),
                                    height:  screen.size.height*ht(155),
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
                                    top:  screen.size.height*ht(124),
                                    right: screen.size.width*wt(4),
                                    child: Container(
                                      width: screen.size.width*wt(40),
                                      height:  screen.size.height*ht(35),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/purpleicon.png',
                                              width: screen.size.width*wt(25),
                                              height:  screen.size.height*ht(30),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:  screen.size.height*ht(9)),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(15)),
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
                                padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(15)),
                                child: Text(
                                  podcastData[index]['description']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              SizedBox(height:  screen.size.height*ht(10)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Purple Container with Back Button, Title, and Search Bar

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
