import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:mwm/Home/home_page.dart';

class TextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextPageState();
  }
}

class TextPageState extends State<TextPage> {
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
          backgroundColor: Color.fromRGBO(102, 29, 137, 1),
          foregroundColor: Colors.white,
          title: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Motivation Centre",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        ". Online",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(143, 198, 66, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [

              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                backGroundColor: Color.fromRGBO(102, 29, 137, 1),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Hey, send me motivational quotes",
                    style: TextStyle(color: Colors.white,
                    fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "02:28 PM",
                    style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color.fromRGBO(245, 245, 245, 1),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "If your dreams don’t scare you, they are too small.",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),
              ),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color.fromRGBO(245, 245, 245, 1),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Change is painful, but nothing is as painful as staying stuck somewhere you don’t belong.",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "02:31 PM",
                    style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                backGroundColor: Color.fromRGBO(102, 29, 137, 1),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Thanks",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ),
              ),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                backGroundColor: Color.fromRGBO(102, 29, 137, 1),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Send me few more",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "02:34 PM",
                    style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color.fromRGBO(245, 245, 245, 1),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Yeah Sure",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),
              ),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color.fromRGBO(245, 245, 245, 1),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "If your dreams don’t scare you, they are too small.",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),
              ),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color.fromRGBO(245, 245, 245, 1),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Nothing is impossible. The word itself says I’m possible! #DailyAffirmations",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "02:36 PM",
                    style: TextStyle(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Type a message...',
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    suffixIcon: Stack(
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(top:1.5),
                          child: Image.asset('assets/images/purple.png', width: 44.5),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:11,left:10),
                          child: Image.asset(
                            'assets/images/mice.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showTooltip(BuildContext context, String message) {}

void hideTooltip() {}
