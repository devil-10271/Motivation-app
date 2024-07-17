import 'package:mwm/Home/Matrixs/3_weight_logging/add_weight.dart';
import 'package:flutter/material.dart';

class WeightLogging extends StatelessWidget {
  const WeightLogging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        title: Text("Weight logging",
          style:TextStyle(fontSize: 20,
              fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //Weight logging
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Today',
                    listEntries: [
                      Entry(
                        Weight: '62.85 kg',
                        time: '03:30 PM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Yesterday',
                    listEntries: [
                      Entry(
                        Weight: '61.92 kg',
                        time: '12:16 PM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: '08-16-2023',
                    listEntries: [
                      Entry(
                        Weight: '61.80 kg',
                        time: '12:16 PM',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => AddWeight(),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor:
                Color.fromRGBO(112, 43, 146, 1),
                backgroundColor:
                Color.fromRGBO(251, 244, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      100), // Adjust the radius as needed
                ),
                minimumSize: Size(350, 54),
              ),
              child: Text('ADD NEW',
                style:TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w700),),
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
        width: 388, // Adjust width to fit label
        height: 54, // Set the desired height

      ),
    );
  }
}

class ListSection extends StatelessWidget {
  final String sectionTitle;
  final List<Entry> listEntries;

  const ListSection({
    required this.sectionTitle,
    required this.listEntries,
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
        for (Entry entry in listEntries) ...[
          EntryCard(entry: entry),
        ],
      ],
    );
  }
}

class EntryCard extends StatelessWidget {
  final Entry entry;

  const EntryCard({
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Weight Logging: ${entry.Weight}',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            entry.time,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class Entry extends StatelessWidget {
  final String Weight;
  final String time;

  const Entry({
    required this.Weight,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(); // This is just a placeholder.
  }
}
