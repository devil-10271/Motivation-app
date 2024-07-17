import 'package:flutter/material.dart';
import 'package:mwm/Home/Grid/6_recipes_ideas/2_recipe_ideas/recipe detail.dart';

class RecipesIdeas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipesIdeasState();
  }
}
class RecipesIdeasState extends State<RecipesIdeas> {
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
          title: Text("Recipes Ideas", style:TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              // Container with the image and text
              Container(
                width: 388,
                height:300,
                margin: EdgeInsets.all(20), // Add margin to position the container below the AppBar
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetail()));
                      },
                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/recipe.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetail()));
                        },
                        child: Expanded(
                          child: Container(
                            // height: 150,
                            color: Colors.black.withOpacity(0.0),
                            padding: EdgeInsets.symmetric(vertical: 70,horizontal:10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Prawns with Chickpeas and\nSeasoned Asparagus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height:4), // Add space between texts
                                Row(
                                  children: [
                                    Text(
                                      '15 Min',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 13,), // Add space between the texts
                                    Text(
                                      '|',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 15), // Add space between the texts
                                    Text(
                                      '4 Serves',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
