import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yatri_clone/TabPages/Flight/Flight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];
  List _itemsForDisplay = [];

  //Fetch data from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
        'assets/airportData/AllAirports.json'); //loading the json as a string and save in a variable call response
    final data = await json.decode(
        response); //Converts data in JavaScript Object Notation (JSON) format into a data object of a specified type and store in data variable
    setState(() {
      _items = data["airports"]; //to let the UI know we have loaded our data and List _item is updated with airports data
      _itemsForDisplay =_items;
      // print(
      //     "..no. of items ${_items.length}"); //print the no. of items/airports in our json file(this tells us when we press the button the button the data is loaded in _items variable
    });

  }

  //calling the readJson function
  @override
  void initState(){
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                //if the _items is not empty
                child: ListView.builder(
                  itemCount: _itemsForDisplay.length+1,
                  itemBuilder: (context, index) {
                    return index == 0 ? _searchBar(): _listItems(index-1);
                  },
                ),
              )               //if _items is empty
            ],
          )),
    );
  }
  // Widget buildSearch()=> TextField(
  //
  // );



  _searchBar(){
    return Padding(padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: const InputDecoration(
            hintText: "Search"),
        onChanged: (text){
          text = text.toLowerCase();
          setState(() {
            _itemsForDisplay = _items.where((item) {
              var airportTitle = item.toString().toLowerCase();
              return airportTitle.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItems(index){
    return Card(
      elevation: 0.1,
      key: ValueKey(_items[index]['id']),
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Text(_itemsForDisplay[index]['iata']),
        title: Text(_itemsForDisplay[index]['location']),
        subtitle: Text(_itemsForDisplay[index]['name']),
        onTap: (){
          String selectedText = _itemsForDisplay[index]['location'];
          Navigator.push(context, MaterialPageRoute(builder: (context)=>flight(location: selectedText,)));
        },
      ),

    );
  }



}