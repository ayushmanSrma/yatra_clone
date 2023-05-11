import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yatri_clone/navpage/HomePage.dart';

import '../TabPages/Adventures.dart';
import '../TabPages/Buses/Buses.dart';
import '../TabPages/Cabs/Cabs.dart';
import '../TabPages/Flight/Flight.dart';
import '../TabPages/Freight.dart';
import '../TabPages/Gift.dart';
import '../TabPages/Holidays.dart';
import '../TabPages/Hotels/Hotels.dart';
import '../TabPages/Trains/Trains.dart';
import '../TabPages/Villas.dart';
import '../TabPages/Visa.dart';


class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          bottom: const TabBar(
            dividerColor: Colors.red,
            isScrollable: true,
            tabs: [
            Tab(text: 'Flights',icon: Icon(Icons.flight,color:  Colors.black),),
            Tab(text: 'Hotels',icon: Icon(Icons.bed,color: Colors.black),),
            Tab(text: 'Holidays',icon: Icon(Icons.beach_access,color: Colors.black),),
            Tab(text: 'Buses',icon: Icon(Icons.bus_alert_rounded,color: Colors.black),),
            Tab(text: 'Trains',icon: Icon(Icons.train_outlined,color: Colors.black,),),
            Tab(text: 'Cabs',icon: Icon(Icons.car_crash_sharp,color: Colors.black,),),
            Tab(text: 'Villas & Stays ',icon: Icon(Icons.house,color: Colors.black,),),
            Tab(text: 'Visa',icon: Icon(Icons.monetization_on,color: Colors.black,),),
            Tab(text: 'Gift Voucher',icon: Icon(Icons.card_giftcard,color: Colors.black,),),
            Tab(text: 'Freight',icon: Icon(Icons.local_shipping,color: Colors.black,),),
            Tab(text: 'Adventure',icon: Icon(Icons.flag,color: Colors.black,),),
          ],
            labelPadding: EdgeInsets.symmetric(horizontal: 14.0),
            labelStyle: TextStyle(
              fontSize: 14
            ),
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black ,
          ),
          backgroundColor: Colors.white,
          title: const Text("yatra",
            style: TextStyle(
                color: Colors.red,
              fontSize: 30.0
            ) ,),
        ),
        body: Column(
          children: [
             Expanded(
               child: TabBarView(
                children: [
                  flight(),
                  hotels(),
                  holidays(),
                  buses(),
                  trains(),
                  cabs(),
                  villas(),
                  visa(),
                  gift(),
                  freight(),
                  adventures(),
                ],
            ),
             ),
          ],
        ),
      ),
    );
  }
}
