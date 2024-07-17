import 'package:flutter/material.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';




class Podcast extends StatefulWidget {
  const Podcast({Key? key}) : super(key: key);

  @override
  _PodcastState createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  int selectedIndex = 0;

  final List<String> items3 = [
    'All',
    'Motivation Clinics',
    'Motivation Podcasts',
    'Motivation Mindset',
    'other',
  ];

  final List<Map<String, String>> podcastData = [
    {
      'imagePath': 'assets/images/podcast_1.png',
      'title': 'Fat Loss VS Weight loss',
      'description': '12.58 mins . 1 year ago',
      'videoId': "ajbad5FIn68",
    },
    {
      'imagePath': 'assets/images/podcast_2.png',
      'title': 'Laura Grant Podcast Motivation...',
      'description': '30:24 mins . 2 year ago',
      'videoId': "mzXXvT3_nA4",
    },
    {
      'imagePath': 'assets/images/podcast_3.png',
      'title': 'Aisling Connolly & Gary Browne M...',
      'description': '22:44 mins . 4 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_1.png',
      'title': 'Fat Loss VS Weight loss',
      'description': '12.58 mins . 1 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_2.png',
      'title': 'Laura Grant Podcast Motivation...',
      'description': '30:24 mins . 2 year ago'
    },
    {
      'imagePath': 'assets/images/podcast_3.png',
      'title': 'Aisling Connolly & Gary Browne M...',
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
                      width: screen.size.width*wt(110),
                    ),
                    Text(
                      'Podcast',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screen.size.height*ht(80)),
              child: Container(
                width: screen.size.width*wt(388),
                height: screen.size.height*ht(40),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(left: screen.size.width*wt(10)),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(235, 235, 235, 1),
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
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(

              child: Column(
                children: [
                  // Category List
                  Padding(
                    padding: EdgeInsets.only(top: screen.size.height*ht(141)),
                    child: Container(
                      height: screen.size.height*ht(50),
                      margin: EdgeInsets.only(top: screen.size.height*ht(5)),
                      child: ListView.builder(
                        // padding: EdgeInsets.zero,
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
                              height: screen.size.height*ht(54),
                              padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(25)),
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
                                    fontWeight: FontWeight.w600,
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
                  ),
                  // Podcast List
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: screen.size.height*ht(5)),
                      itemCount: podcastData.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap:()=>_handleTap(index),
                          child: Container(
                            width: screen.size.width*wt(400),
                            height: screen.size.height*ht(225),
                            margin: EdgeInsets.symmetric(
                                horizontal: screen.size.width*wt(20), vertical: screen.size.height*ht(10)),
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
                                                'assets/images/youtube.png',
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
                                  padding: EdgeInsets.symmetric(horizontal:  screen.size.height*ht(15)),
                                  child: Text(
                                    podcastData[index]['title']!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(height:  screen.size.height*ht(1)),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: screen.size.height*ht(15)),
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
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  void _handleTap(int index) {
    final videoId = podcastData[index]['videoId'];
    if (videoId != null && videoId.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Stack(
              children: [
                Positioned(
                    top: MediaQuery.of(context).size.height*ht(50),
                    left: MediaQuery.of(context).size.width*wt(25),
                    child: InkWell(onTap: (){
                      Navigator.of(context).pop();
                    },
                        child: Icon(Icons.arrow_back_ios))),
                Center(
                  child: YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: videoId,
                      flags: YoutubePlayerFlags(
                        autoPlay: true,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    progressColors: ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Video Not Available'),
            content:
            Text('Sorry, the video for this podcast is not available.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}



double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}