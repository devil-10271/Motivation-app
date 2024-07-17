import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GuestPage extends StatefulWidget {
  const GuestPage({Key? key}) : super(key: key);

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  int _curre = 0; // Move this variable to the class level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(112, 43, 146, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello 👋",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              // Add your user logo here
                              backgroundImage: AssetImage(
                                  'assets/New folder/mix icon/user.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Guest 12",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 3.5,
                    mainAxisExtent: 90,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    List<GridItem> gridItems = [
                      GridItem(
                        iconPath: 'assets/New folder/mix icon/podcast.png',
                        label: 'Podcasts',
                        labelColor: Colors.black,
                        showArrow: true,
                        iconSize: 25,
                        fontSize: 13,
                        onTap: () {},
                        backgroundColor: Colors.grey[200],
                      ),
                      GridItem(
                        iconPath: 'assets/New folder/mix icon/inspiration.png',
                        label: 'Daily Inspiration',
                        labelColor: Colors.black,
                        showArrow: true,
                        iconSize: 25,
                        fontSize: 11,
                        onTap: () {},
                        backgroundColor: Colors.grey[200],
                      ),
                      GridItem(
                        iconPath: 'assets/New folder/mix icon/recipe-book.png',
                        label: 'Recipes Ideas',
                        labelColor: Colors.black,
                        showArrow: true,
                        iconSize: 25,
                        fontSize: 13,
                        onTap: () {},
                        backgroundColor: Colors.grey[200],
                      ),
                    ];
                    if (index < gridItems.length) {
                      return gridItems[index];
                    }
                    return SizedBox.shrink();
                  },
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Sign in to access these features',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  List<ListItem> listItems = [
                    ListItem(
                      iconPath: 'assets/New folder/mix icon/voice-control.png',
                      label: 'Audio Programmes',
                      onTap: () {},
                      backgroundColor: Colors.white,
                    ),
                    ListItem(
                      iconPath:
                          'assets/New folder/mix icon/call-center-agent.png',
                      label: 'Exercise & Pilates',
                      onTap: () {},
                      backgroundColor: Colors.white,
                    ),
                    ListItem(
                      iconPath: 'assets/New folder/mix icon/note.png',
                      label: 'Healthy Meal Plan',
                      onTap: () {},
                      backgroundColor: Colors.white,
                    ),
                    ListItem(
                      iconPath: 'assets/New folder/mix icon/note-book.png',
                      label: 'Weekly Workbook & Assist',
                      onTap: () {},
                      backgroundColor: Colors.white,
                    ),
                    ListItem(
                      iconPath: 'assets/New folder/mix icon/audio-book.png',
                      label: 'Audio Books & Video',
                      onTap: () {},
                      backgroundColor: Colors.white,
                    ),
                  ];
                  if (index < listItems.length) {
                    return listItems[index];
                  }
                  return SizedBox.shrink();
                },
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Metrics',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 20.0,
                    mainAxisExtent: 80,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    List<GridItem> buttonItems = [
                      GridItem(
                        iconPath: 'assets/New folder/mix icon/phone.png',
                        label: 'Request Callback',
                        labelColor: Colors.black,
                        showArrow: false,
                        iconSize: 20,
                        fontSize: 10,
                        onTap: () {},
                        borderColor: Color.fromRGBO(112, 43, 146, 1),
                        backgroundColor: Colors.grey[200],
                      ),
                      GridItem(
                        iconPath: 'assets/New folder/mix icon/assessment.png',
                        label: 'Book Assessment',
                        labelColor: Colors.black,
                        showArrow: false,
                        iconSize: 20,
                        fontSize: 10,
                        onTap: () {},
                        borderColor: Color.fromRGBO(112, 43, 146, 1),
                        backgroundColor: Colors.grey[200],
                      ),
                    ];
                    if (index < buttonItems.length) {
                      return buttonItems[index];
                    }
                    return SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(112, 43, 146, 1),
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedItemColor: Colors.grey,
        currentIndex: _curre,
        onTap: (int newIndex) {
          setState(() {
            _curre = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => showTooltip(context, 'Home'),
              onExit: (event) => hideTooltip(),
              child: ImageIcon(
                AssetImage('assets/New folder/mix icon/dashboard.png'),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Supplement',
            icon: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => showTooltip(context, 'Supplement'),
              onExit: (event) => hideTooltip(),
              child: ImageIcon(
                AssetImage('assets/New folder/mix icon/supplement.png'),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Comments',
            icon: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => showTooltip(context, 'Comments'),
              onExit: (event) => hideTooltip(),
              child: ImageIcon(
                AssetImage('assets/New folder/mix icon/comments.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color labelColor;
  final bool showArrow;
  final double iconSize;
  final double fontSize;
  final Color? borderColor;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  const GridItem({
    required this.iconPath,
    required this.label,
    required this.labelColor,
    required this.showArrow,
    required this.iconSize,
    required this.fontSize,
    this.borderColor,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: backgroundColor ?? Colors.grey[200],
          border: borderColor != null ? Border.all(color: borderColor!) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    iconPath,
                    width: iconSize,
                    height: iconSize,
                  ),
                  SizedBox(width: 8),
                  Text(
                    label,
                    style: TextStyle(
                      color: labelColor,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
              if (showArrow)
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final Color? backgroundColor;

  const ListItem({
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          title: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}

void showTooltip(BuildContext context, String message) {}

void hideTooltip() {}
