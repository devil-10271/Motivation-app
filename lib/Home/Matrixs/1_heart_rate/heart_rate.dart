import 'package:mwm/Home/Matrixs/1_heart_rate/add_heart_rate.dart';
import 'package:flutter/material.dart';

class HeartRate extends StatelessWidget {
  const HeartRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Color.fromRGBO(112, 43, 146, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Text(
                      "Heart Rate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Today',
                    listEntries: [
                      Entry(
                        pulseRate: '72 bpm',
                        time: '03:30 PM',
                      ),
                      Entry(
                        pulseRate: '71 bpm',
                        time: '01:15 PM',
                      ),
                      Entry(
                        pulseRate: '70 bpm',
                        time: '12:16 PM',
                      ),
                      Entry(
                        pulseRate: '80 bpm',
                        time: '12:10 PM',
                      ),
                      Entry(
                        pulseRate: '85 bpm',
                        time: '11:00 AM',
                      ),
                      Entry(
                        pulseRate: '95 bpm',
                        time: '10:30 AM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: 'Yesterday',
                    listEntries: [
                      Entry(
                        pulseRate: '70 bpm',
                        time: '12:16 PM',
                      ),
                      Entry(
                        pulseRate: '80 bpm',
                        time: '12:00 AM',
                      ),
                      Entry(
                        pulseRate: '85 bpm',
                        time: '11:00 AM',
                      ),
                      Entry(
                        pulseRate: '95 bpm',
                        time: '10:30 AM',
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing
                  ListSection(
                    sectionTitle: '08-16-2023',
                    listEntries: [
                      Entry(
                        pulseRate: '70 bpm',
                        time: '12:16 PM',
                      ),
                      Entry(
                        pulseRate: '80 bpm',
                        time: '12:00 AM',
                      ),
                      Entry(
                        pulseRate: '85 bpm',
                        time: '11:00 AM',
                      ),
                      Entry(
                        pulseRate: '95 bpm',
                        time: '10:30 AM',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              label: 'Add New',
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => AddHeartRate(),
                );
              },
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
          Text(
            'Pulse Rate: ${entry.pulseRate}',
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
  final String pulseRate;
  final String time;

  const Entry({
    required this.pulseRate,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(); // This is just a placeholder.
  }
}
