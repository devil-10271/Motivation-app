import 'package:flutter/material.dart';
import 'package:mwm/Home/Grid/2_weekly_workbook/1_pdf.dart';
import 'package:mwm/Home/Grid/2_weekly_workbook/2_pillar.dart';


class WeeklyWorkbook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeeklyWorkbookState();
  }
}

class WeeklyWorkbookState extends State<WeeklyWorkbook> {
  final List<String> items = [
    'G3 15. How to Control Our Emotions',
    'Pillar',
    'Core',
  ];

  final List<String> iconPaths = [
    'assets/images/pdfimage.png', // Icon for the first item
    'assets/images/purple-note-book.png', // Icons for the last two items
    'assets/images/purple-note-book.png', // Icons for the last two items
  ];

  void _onItemTapped(int index) {
    // Define the action for each item tap here
    // For example, navigate to a new page or show a message
    print('Tapped on: ${items[index]}');
  }

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
          title: Text("Weekly Workbook & Assist",
            style:TextStyle(fontSize: 20,
                fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),///
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(150, 150, 150, 230)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))))),
                          onPressed: () {
                            if (index == 0){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PdfScreen()));
                            }
                            if (index == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PillarPage()));
                            }
                          },
                          child: Row(children: [
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
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            if (index == 0)
                              Image.asset(
                                'assets/images/download.png',
                                height: 20,
                                width: 20,
                              )
                            else
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.black,
                              ),
                          ])),

                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
