import 'package:flutter/material.dart';
import 'package:mwm/Home/Grid/6_recipes_ideas/1_week_special.dart';
import 'package:mwm/Home/Grid/6_recipes_ideas/3_recipe_videos.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:mwm/Home/Grid/6_recipes_ideas/2_recipes_ideas.dart';
class RecipesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipesPageState();
  }
}

class RecipesPageState extends State<RecipesPage> {
  final List<String> items = [
    'The Week’s Special',
    'Recipe Ideas',
    'Recipe Videos',
    'Key Foods',
  ];
  final List<String> iconPaths =
      List.generate(4, (index) => 'assets/images/recipes.png');
  final List<String> iconPaths2 =
      List.generate(4, (index) => 'assets/images/forward.png');
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
          title: Text("Recipes Ideas"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,

        body: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                //shrinkWrap: true,
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
                        color:Color.fromRGBO(150, 150, 150, 230),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: () {
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => WeekSpecial()));
                          }
                          if(index==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RecipesIdeas()));
                          }
                          if(index==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeVideos()));
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              iconPaths[index],
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
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
