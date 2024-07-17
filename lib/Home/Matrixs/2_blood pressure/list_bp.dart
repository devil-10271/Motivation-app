import 'package:flutter/material.dart';
import 'package:mwm/Home/Matrixs/2_blood pressure/add_blood_pressure.dart';

class ListBp extends StatelessWidget {
  const ListBp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Blood Presure"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Today',
                    ListEntries: [
                      Entry(
                        systolic: '80 mmHg',
                        diastolic: '120 mmHg',
                        pulseRate: '70 bpm',
                        time: '12:16 PM',
                      ),
                      Entry(
                        systolic: '100 mmHg',
                        diastolic: '110 mmHg',
                        pulseRate: '65 bpm',
                        time: '12:00 PM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Yesterday',
                    ListEntries: [
                      Entry(
                        systolic: '110 mmHg',
                        diastolic: '120 mmHg',
                        pulseRate: '85 bpm',
                        time: '12:00 PM',
                      ),
                      Entry(
                        systolic: '80 mmHg',
                        diastolic: '110 mmHg',
                        pulseRate: '70 bpm',
                        time: '11:16 AM',
                      ),
                      Entry(
                        systolic: '80 mmHg',
                        diastolic: '100 mmHg',
                        pulseRate: '60 bpm',
                        time: '11:00 AM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: '08-16-2023',
                    ListEntries: [
                      Entry(
                        systolic: '110 mmHg',
                        diastolic: '120 mmHg',
                        pulseRate: '85 bpm',
                        time: '11:00 AM',
                      ),
                      Entry(
                        systolic: '80 mmHg',
                        diastolic: '110 mmHg',
                        pulseRate: '70 bpm',
                        time: '10:16 AM',
                      ),
                      Entry(
                        systolic: '80 mmHg',
                        diastolic: '100 mmHg',
                        pulseRate: '60 bpm',
                        time: '10:05 AM',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context) =>
                        AddBloodPressure());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor:
                Color.fromRGBO(112, 43, 146, 1),
                backgroundColor:
                Color.fromRGBO(251, 244, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                minimumSize: Size(350, 54),
              ),
              child: Text('ADD NEW'),
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
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromRGBO(112, 43, 146, 1),
            backgroundColor: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListSection extends StatelessWidget {
  final String sectionTitle;
  final List<Entry> ListEntries;

  const ListSection({
    required this.sectionTitle,
    required this.ListEntries,
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
        for (Entry entry in ListEntries) ...[
          EntryCard(entry: entry),
          Divider(
            color: Color.fromARGB(255, 170, 165, 165),
            thickness: 1,
          ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Systolic: ${entry.systolic}',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                'Diastolic: ${entry.diastolic}',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                'Pulse Rate: ${entry.pulseRate}',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
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
  final String systolic;
  final String diastolic;
  final String pulseRate;
  final String time;

  const Entry({
    required this.systolic,
    required this.diastolic,
    required this.pulseRate,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(); // This is just a placeholder.
  }
}
