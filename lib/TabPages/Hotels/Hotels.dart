import 'package:flutter/material.dart';
class hotels extends StatefulWidget {
  const hotels({Key? key}) : super(key: key);

  @override
  State<hotels> createState() => _hotelsState();
}

class _hotelsState extends State<hotels> {
  DateTime _dateTime = DateTime.now();
  DateTime _dateTime2 = DateTime.now();

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

  void _showDatePicker2() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025))
        .then((value){
      setState(() {
        _dateTime2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Destination",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  Text("New Delhi",style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Guest Room",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  Text("1 Adult, 1 Room",style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
          ),
          Divider(),
          Row(
            children: [
              GestureDetector(
                onTap: _showDatePicker,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Check-in",style: TextStyle(fontSize: 15,color: Colors.grey)),
                      SizedBox(height: 10,),
                      Text(
                        "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 140,),
              GestureDetector(
                onTap: _showDatePicker2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Check-out",style: TextStyle(fontSize: 15,color: Colors.grey,)),
                      SizedBox(height: 10,),
                      Text(
                        "${_dateTime2.day}/${_dateTime2.month}/${_dateTime2.year}",
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(),
          SizedBox(height: 40,),
          Center(
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                  padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
              child: const Text(
                'Search Hotels',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
