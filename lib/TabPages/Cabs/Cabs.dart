import 'package:flutter/material.dart';
import 'package:yatri_clone/TabPages/Cabs/Airport.dart';

import 'Rental.dart';
class cabs extends StatefulWidget {
  const cabs({Key? key}) : super(key: key);

  @override
  State<cabs> createState() => _cabsState();
}

class _cabsState extends State<cabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.red,
              child: const TabBar(
                tabs: [
                  Tab(text: 'RENTALS'),
                  Tab(text: 'AIRPORT TRANSFER'),
                ],
                labelPadding: EdgeInsets.symmetric(horizontal: 14.0),
                labelStyle: TextStyle(
                    fontSize: 14
                ),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,

                unselectedLabelColor: Colors.white70 ,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  rentals(),
                  airport(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










// GestureDetector(
//   onTap: (){},
//   child: Text("RENTALS",style: TextStyle(fontSize: 20,color: Colors.white),),
// ),
// SizedBox(width: 50,),
// GestureDetector(
//   onTap: (){},
//   child: Text("AIRPORT TRANSFER",style: TextStyle(fontSize: 20,color: Colors.white),),
// ),