/// this code is develop by nandani

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:mwm/Home/Grid/3_audio_programmes/1_eating_habits.dart';

class AudioProgrammes extends StatefulWidget {
  const AudioProgrammes({Key? key}) : super(key: key);

  @override
  State<AudioProgrammes> createState() => _AudioProgrammesState();
}

class _AudioProgrammesState extends State<AudioProgrammes> {
  final List<String> items = [
    'Change Your Eating Habits',
    'Healthy Mind, Healthy Body',
    'Learn to Reward Yourself',
    'Acquire Positive Motivation',
    'Guilt & Perfectionism',
    'Adolescent - Healthy Mind, Healthy Body - Its your Choice',
    'Learn to Master Stress & Emotions',
    'Be more Assertive'
  ];
  final List<String> iconPaths =
      List.generate(8, (index) => 'assets/images/mike.png');
  final List<String> iconPaths2 =
      List.generate(8, (index) => 'assets/images/goto.png');

  @override
  Widget build(BuildContext context) {
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
              Navigator.pop(
                context,
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        backgroundColor: Color.fromRGBO(102, 29, 137, 1),
        foregroundColor: Colors.white,
        title: Text("Audio Programmes",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Container(
                      width: 388,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: (){
                          if(index==0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EatingHabits()));}
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              iconPaths[index],
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 16,
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
