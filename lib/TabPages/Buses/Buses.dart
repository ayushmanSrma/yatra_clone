import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buses extends StatefulWidget {
  const buses({Key? key}) : super(key: key);

  @override
  State<buses> createState() => _busesState();
}

class _busesState extends State<buses> {
  DateTime _dateTime = DateTime.now();
  int _selectedValue =0;
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value){
          setState(() {
            _dateTime = value!;
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Leaving from",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                    Text(
                      "Delhi",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 210,
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Going to",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                    Text(
                      "Mumbai",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Departure",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: _showDatePicker,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.date_range),
                          color: Colors.red,
                          onPressed: _showDatePicker,
                        ),
                        Text(
                          "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(height: 20,thickness: 1,),
        CupertinoButton(child: Text("Seat(s) Requires = $_selectedValue",style: TextStyle(fontSize: 20,color: Colors.black),),
            onPressed: ()=> showCupertinoModalPopup(context: context, builder:(_)=> SizedBox(
              width: double.infinity,
              height: 250,
              child: CupertinoPicker(
                backgroundColor: Colors.grey[300],
                itemExtent: 30,
                scrollController: FixedExtentScrollController(
                  initialItem: 1
                ),
                children: const[
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                ],
                onSelectedItemChanged: (int value){
                  setState(() {
                    _selectedValue = value;
                  });
                },
              ),
            ) )),
        Divider(height: 20,thickness: 1,),
        SizedBox(height: 40,),
        Center(
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[500],
                padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
            child: const Text(
              'FIND BUSES',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
