import 'package:flutter/material.dart';

class trains extends StatefulWidget {
  const trains({Key? key}) : super(key: key);

  @override
  State<trains> createState() => _trainsState();
}

class _trainsState extends State<trains> {

  DropdownMenuItem<String> buildMenuItems(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 20),
    ),
  );

  DateTime _dateTime3 = DateTime.now();

  final items = [
    "AC First Class(1A)",
    "AC 2 Tier (2A)",
    "AC 3 Tier (3A)",
    "AC Executive Class(EC)",
    "AC Chair Car (CC)",
    "First Class(FC)",
    "Sleeper(SL)",
    "Second Sitting (2S)",
    "AC 3 Tier-Economy"
  ];
  String? value;

  void _showDatePicker3() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime3 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Leaving From",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Going to",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Departure",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          //SizedBox(height: 10,),
          GestureDetector(
            onTap: _showDatePicker3,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.date_range),
                  color: Colors.red,
                  onPressed: _showDatePicker3,
                ),
                Text(
                  "${_dateTime3.day}/${_dateTime3.month}/${_dateTime3.year}",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Preffered Class",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton(
            isExpanded: true,
              value: value,
              items: items.map(buildMenuItems).toList(),
              onChanged: (value) => setState(() {
                    this.value = value;
                  })),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                  padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
              child: const Text(
                'FIND TRAINS',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
