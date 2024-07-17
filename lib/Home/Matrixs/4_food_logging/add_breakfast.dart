import 'package:flutter/material.dart';

//this code is developed by Ayush

class AddBreakfast extends StatefulWidget {
  const AddBreakfast({super.key});

  @override
  State<AddBreakfast> createState() => _AddBreakfastState();
}

class _AddBreakfastState extends State<AddBreakfast> {
  List<TextEditingController> listcontroller = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          width: screen.size.width*wt(428),
          height: screen.size.height*ht(526),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:screen.size.height*ht(35) , left: screen.size.width*wt(110)),
                      child: Text(
                        'Add Breakfast',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: screen.size.height*ht(29), right: screen.size.width*wt(20)),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              listcontroller.add(TextEditingController());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor:
                              const Color.fromRGBO(112, 43, 146, 1),
                              backgroundColor:
                              Color.fromRGBO(251, 244, 255, 1)),
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text(
                                'ADD',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screen.size.height*ht(30), left: screen.size.width*wt(20), right: screen.size.width*wt(20)),
                //color: Colors.red,
                width: screen.size.width*wt(388),
                height: screen.size.height*ht(54),
                child: Row(children: [
                  Text(
                    'Today',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: screen.size.width*wt(10),
                  ),
                  Icon(Icons.calendar_today_outlined),
                ]),
              ),
              SizedBox(
                height: screen.size.height*ht(15),
              ),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listcontroller.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal:  screen.size.width*wt(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screen.size.height*ht(15),
                            ),
                            TextFormField(
                              controller: listcontroller[index],
                              //style: TextStyle(color: Colors.green),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Food Item name'),
                              ),
                            ),
                            SizedBox(
                              height: screen.size.height*ht(15),
                            ),
                            TextFormField(
                              //controller: listcontroller[index],
                              //style: TextStyle(color: Colors.green),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Quantity (gm/kg)'),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: screen.size.width*wt(18), vertical: screen.size.height*ht(40)),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(234, 234, 234, 1)),
                      ),
                      child: Center(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: screen.size.width*wt(39), vertical: screen.size.height*ht(10)),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Color.fromRGBO(112, 43, 146, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:  screen.size.width*wt(10),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(112, 43, 146, 1)),
                      ),
                      child: Center(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal:  screen.size.width*wt(35), vertical: screen.size.height*ht(10)),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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