import 'package:flutter/material.dart';
import 'package:yatri_clone/navpage/MainPage.dart';
import 'package:yatri_clone/navpage/account.dart';
import 'package:yatri_clone/navpage/booking.dart';
import 'package:yatri_clone/navpage/ecash.dart';

class homePage extends StatefulWidget {

  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List pages = [
    mainpage(),
    booking(),
    ecash(),
    account(),
  ];
  int currentIndex = 0;
 void onTap(int index){
   setState(() {
     currentIndex = index;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SingleChildScrollView(
        child: BottomNavigationBar(
          onTap: onTap,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          currentIndex: currentIndex,
          items:const [
            BottomNavigationBarItem(label:"Home",icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(label:"Bookings",icon: Icon(Icons.airplane_ticket)),
            BottomNavigationBarItem(label:"eCash",icon: Icon(Icons.wallet)),
            BottomNavigationBarItem(label:"Account",icon: Icon(Icons.person)),
          ]
        ),
      ),
    );
  }
}
