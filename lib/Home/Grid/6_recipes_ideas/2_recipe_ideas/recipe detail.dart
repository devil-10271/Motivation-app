import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/rendering.dart';



class RecipeDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetail> {
  final List<String> items = [
    '200g',
    '1 tsp',
    '1 tbsp',
    '1/2 tsp',
    '360',
    '2',
    '2',
  ];
  final List<String> items2 = [
    'asparagus tips',
    'chilli flakes',
    'light soya sauce',
    'chinese five spice',
    'prawns',
    'red peppers',
    'cloves garlic',
  ];
  final List<String> items3 = [
    'Place the asparagus in a bowl and toss in the\n'
        'seasoning and soya sauce.',
    'Fry in pan for about 5 minutes until tender.',
    'Meanwhile,in another pan fry off the prawns,\n'
        'garlic and chopped peppers.',
    'Cook a couple of minutes until the prawns go\n'
        'pink,stirring constantly.',
    'Serve over the asparagus with some brown rice\n'
        'or noodles.',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
          title: Text("Recipes Ideas"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Prawns with Chickenpeas and Seasoned Asparagus',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      '15 Minutes',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8), // Add space between the texts
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '4 Serves',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8), // Add space between the texts
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8), // Add space between the texts
                    Text(
                      '2 Proteins',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8), // Add space between the texts
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8), // Add space between the texts
                    Text(
                      '1 Free Veg.',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/recipe 2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                child: Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                child: Text(
                  'This is a recipe that will really aid weight loss and\n'
                      'weight management. We’re using prawns because\n'
                      'they are a rich source of protein containing 10\n'
                      'grams of protein per 2 ounce serving and this prawn \n'
                      'recipe will leave you feeling fuller for longer.\n'
                      'However, if prawns aren’t your favourite source of\n'
                      'protein you can substitute it with chicken or in\n'
                      'the case of vegetarians, chickpeas are a great\n'
                      'substitute, or indeed an addition to the prawn or\n'
                      'chicken recipe.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                child: Text(
                  'Ingredients (7)',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal:20),
                child: Container(
                  //padding: const EdgeInsets.symmetric(vertical: 0, horizontal:10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(10),

                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {


                        return Container(
                          width: 388,
                          height: 45,
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(

                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.shade300)
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width:3),
                              Text(
                                items2[index],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(74, 74, 74, 1),
                                ),
                              ),
                            ],
                          ),
                        );

                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  'Directions',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items3.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 388,
                    //height: 52,
                    padding: EdgeInsets.symmetric(vertical:5, horizontal:10),
                    decoration: BoxDecoration(

                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.green),
                        SizedBox(width:10),
                        Text(
                          items3[index],
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
