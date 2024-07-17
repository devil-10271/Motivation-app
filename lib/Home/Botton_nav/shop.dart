import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {



  @override
  Widget build(BuildContext context) {
    return

       Scaffold(
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
          title: Text("Shop"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(

          child: Image(
            image: AssetImage('assets/images/shop_4x_bbg.png'),

          ),
        ),
        // bottomNavigationBar: Container(
        //   child: BottomNavigationBar(
        //     backgroundColor: Color.fromRGBO(112, 43, 146, 1),
        //     selectedItemColor: Colors.white,
        //     showUnselectedLabels: false,
        //     selectedIconTheme: IconThemeData(size: 25),
        //
        //
        //     unselectedItemColor: Colors.grey,
        //     currentIndex: _curre,
        //     onTap: (int newIndex) {
        //       setState(() {
        //         _curre = newIndex;
        //       });
        //     },
        //     items: [
        //       BottomNavigationBarItem(
        //         label: 'Home',
        //         icon: ImageIcon(AssetImage('assets/images/home.png')),
        //       ),
        //       BottomNavigationBarItem(
        //           label: 'Shop',
        //           icon: ImageIcon(AssetImage('assets/images/shop.png'))),
        //       BottomNavigationBarItem(
        //         label: 'Message',
        //         icon: ImageIcon(AssetImage('assets/images/comments.png')),
        //       ),
        //     ],
        //   ),
        // ),
      );

  }
}
