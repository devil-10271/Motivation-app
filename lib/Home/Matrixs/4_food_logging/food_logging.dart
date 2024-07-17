import 'package:mwm/Home/Matrixs/4_food_logging/add_breakfast.dart';
import 'package:mwm/Home/Matrixs/4_food_logging/add_dinner.dart';
import 'package:mwm/Home/Matrixs/4_food_logging/add_lunch.dart';
import 'package:flutter/material.dart';

class FoodLogging extends StatelessWidget {
  const FoodLogging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
        title: Text("Food Logging",
          style:TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 5,left: 20,right: 20),
                children: [
                  CustomButton(
                    label: 'Breakfast',
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => AddBreakfast(),

                      );
                    },

                  ),
                  CustomButton(
                    label: 'Lunch',
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => AddLunch(),
                      );
                    },
                  ),
                  CustomButton(
                    label: 'Dinner',
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => AddDinner(),
                      );
                    },
                  ),
                  SizedBox(height: 20), // Add spacing
                  FoodSection(
                    sectionTitle: 'Today',
                    foodEntries: [
                      FoodEntry(
                        mealType: 'Breakfast',
                        foodItem: 'Banana',
                        quantity: '250 gm',
                        time: '09:00 AM',
                      ),
                      FoodEntry(
                        mealType: 'Breakfast',
                        foodItem: 'Apple',
                        quantity: '100 gm',
                        time: '09:15 AM',
                      ),
                      FoodEntry(
                        mealType: 'Lunch',
                        foodItem: 'Rice',
                        quantity: '250 gm',
                        time: '01:15 PM',
                      ),
                      FoodEntry(
                        mealType: 'Dinner',
                        foodItem: 'Rice',
                        quantity: '150 gm',
                        time: '08:30 PM',
                      ),
                      FoodEntry(
                        mealType: 'Dinner',
                        foodItem: 'Chicken',
                        quantity: '200 gm',
                        time: '08:45 PM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  FoodSection(
                    sectionTitle: 'Yesterday',
                    foodEntries: [
                      FoodEntry(
                        mealType: 'Breakfast',
                        foodItem: 'Banana',
                        quantity: '250 gm',
                        time: '09:00 AM',
                      ),
                      FoodEntry(
                        mealType: 'Breakfast',
                        foodItem: 'Apple',
                        quantity: '100 gm',
                        time: '09:15 AM',
                      ),
                      FoodEntry(
                        mealType: 'Lunch',
                        foodItem: 'Rice',
                        quantity: '250 gm',
                        time: '01:15 PM',
                      ),
                      FoodEntry(
                        mealType: 'Dinner',
                        foodItem: 'Rice',
                        quantity: '150 gm',
                        time: '08:30 PM',
                      ),
                      FoodEntry(
                        mealType: 'Dinner',
                        foodItem: 'Chicken',
                        quantity: '200 gm',
                        time: '08:45 PM',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const CustomButton({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: 70, // Set the desired width
        height: 65, // Set the desired height
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Color.fromRGBO(251, 244, 255, 1),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              //side: BorderSide(color: Color.fromRGBO(112, 43, 146, 1)),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(Icons.add, color: Color.fromRGBO(112, 43, 146, 1), size: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodSection extends StatelessWidget {
  final String sectionTitle;
  final List<FoodEntry> foodEntries;

  const FoodSection({
    required this.sectionTitle,
    required this.foodEntries,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            sectionTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        for (int i = 0; i < foodEntries.length; i++) ...[
          if (i == 0 || foodEntries[i].mealType != foodEntries[i - 1].mealType)
            Text(
              foodEntries[i].mealType,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (i > 0 && foodEntries[i].mealType == foodEntries[i - 1].mealType)
            Divider(
              color: Color.fromARGB(255, 170, 165, 165),
              thickness: 1,
            ),
          foodEntries[i],
        ],
      ],
    );
  }
}

class FoodEntry extends StatelessWidget {
  final String mealType;
  final String foodItem;
  final String quantity;
  final String time;

  const FoodEntry({
    required this.mealType,
    required this.foodItem,
    required this.quantity,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Food Item: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 138, 131, 131),
                        ),
                      ),
                      TextSpan(
                        text: foodItem,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '\nQuantity: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 138, 131, 131),
                        ),
                      ),
                      TextSpan(
                        text: quantity,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
