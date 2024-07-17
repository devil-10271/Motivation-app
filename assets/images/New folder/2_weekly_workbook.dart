import 'package:flutter/material.dart';

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
          backgroundColor: Color.fromRGBO(112, 43, 146, 1),
          title: Text(
            "Weekly Workbook & Assist",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          leading: InkWell(
            onTap: () {
              // Define the action for the back button here
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 80,
        ),
        body: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                    child: InkWell(
                      onTap: () => _onItemTapped(index),
                      child: Container(
                        width: 388,
                        height: 60,
                        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(150, 150, 150, 230),
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
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
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


