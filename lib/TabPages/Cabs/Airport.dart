import 'package:flutter/material.dart';

class airport extends StatefulWidget {
   const airport({Key? key}) : super(key: key);


  @override
  State<airport> createState() => _airportState();
}

class _airportState extends State<airport> {
  DateTime _dateTime6 = DateTime.now();

  int _value = 1;

  void _showDatePicker6() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime6 = value!;
      });
    });
  }

  TimeOfDay _timeOfDay3 = TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker3() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay3 = value!;
      });
    });
  }
  Widget rowRound({required int value,required String way}){
    return Row(
      children: [
        Radio(value: value, groupValue: _value, onChanged: (val){
          setState(() {
            _value=val!;
          });
        }),
        RichText(text: TextSpan(
          text: way,
          style: TextStyle(color: Colors.black,fontSize: 15),
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
          visible: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    rowRound(value:1, way:"FROM AIRPORT"),
                    rowRound(value:2, way:"TO AIRPORT"),
                  ],
                ),
                Text(
                  "From Airport",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                GestureDetector(
                  child: Text(
                    'Delhi',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Divider(
                  height: 50,
                  thickness: 1,
                ),
                Text(
                  "To",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                GestureDetector(
                  child: Text(
                    'Mumbai',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Divider(
                  height: 50,
                  thickness: 1,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _showDatePicker6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Return Date",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${_dateTime6.day}/${_dateTime6.month}/${_dateTime6.year}",
                            style:
                                TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 182,
                    ),
                    GestureDetector(
                      onTap: _showTimePicker3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Return Time",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            _timeOfDay3.format(context).toString(),
                            style:
                                TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 50,
                  thickness: 1,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[500],
                        padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15)),
                    child: const Text(
                      'Search Cabs',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
