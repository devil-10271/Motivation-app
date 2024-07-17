import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:mwm/Home/home_page.dart';

import '4_audio_books_video/4_now_playing.dart.dart';

class AudioVideo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AudioVideoState();
  }
}

class AudioVideoState extends State<AudioVideo> {
  final List<String> items = [
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
    'Chapter 4',
    'Chapter 5',
    'Chapter 6',
    'Chapter 7',
    'Chapter 8',
    'Chapter 9',
    'Chapter 10',
    'Chapter 11',
    'Chapter 12',
    'Chapter 13',
    'Chapter 14'
  ];

  final List<String> items2 = [
    'Introduction',
    'Brain Washing',
    'The Illusion of Happiness',
    'The Art of Destroying Yourself',
    'Surfing of Disease',
    'A Treatable Disease',
    'Your Greatest Power',
    'Deprogramming - A Past Life',
    'Out of Touch with Your Body',
    'The Fear of Being Thin',
    'Brain Washing',
    'The Illusion of Happiness',
    'Surfing of Disease',
    'A Treatable Disease',
  ];

  final List<String> iconPaths = [
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/youtube.png',
    'assets/images/youtube.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
    'assets/images/music.png',
  ];

  final List<String> iconPaths2 = [
    'assets/images/play1.png',
    'assets/images/play2.png',
    'assets/images/play3.png',
    'assets/images/pause.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
    'assets/images/play.png',
  ];
  final List<String> items3 = [
    'Be Thin Through Motivation',
    'Be Slim From Within',
    'Stay Healthy Through Motivation',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            leading: InkWell(
                borderRadius: BorderRadius.circular(90),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                )),
            backgroundColor: Color.fromRGBO(102, 29, 137, 1),
            foregroundColor: Colors.white,
            title: Text("Audio Books & Videos",
            style: TextStyle(fontSize:20,
            fontWeight: FontWeight.w700),),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                        margin: EdgeInsets.all(1),
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (index== 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NowPlaying()));
                        }
                      },
                      child: Container(
                        width: 388,
                        height: 60,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.shade300, width: 1.0)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              iconPaths[index],
                              height: 44,
                              width: 44,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index],
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(74, 74, 74, 1),
                                    ),
                                  ),
                                  Text(
                                    items2[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              iconPaths2[index],
                              height: 40,
                              width: 40,
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
        ));
  }
}
