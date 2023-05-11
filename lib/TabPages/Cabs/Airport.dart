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
  Widget rowRound({required int value,required String way,String subway = "dunmmy"}){
    return Row(
      children: [
        Radio(value: value, groupValue: _value, onChanged: (val){
          setState(() {
            _value=val!;
          });
        }),
        // Text(way,style: TextStyle(fontSize: 18),)
        RichText(text: TextSpan(
          text: way,
          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: '\n${subway}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal))
          ]
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
          visible: true,
          child: Column(
            children: [
              // Row(
              //   children: [
              //     Expanded(
              //       child: RadioListTile(
              //         contentPadding: EdgeInsets.all(0),
              //         dense: true,
              //         value: 1,
              //         groupValue: _value,
              //         onChanged: (val) {
              //           setState(() {
              //             _value = val!;
              //           });
              //         },
              //         title: Text("ROUND TRIP",style: TextStyle(fontSize: 12),),
              //         subtitle: Text("OUTSTATION",style: TextStyle(fontSize: 10),)
              //       ),
              //     ),
              //     Expanded(
              //       child: RadioListTile(
              //         value: 2,
              //         groupValue: _value,
              //         onChanged: (val) {
              //           setState(() {
              //             _value = val!;
              //           });
              //         },
              //         title: Text("ROUND TRIP",style: TextStyle(fontSize: 12),),
              //         subtitle: Text("OUTSTATION",style: TextStyle(fontSize: 10),),
              //       ),
              //     ),
              //     Expanded(
              //       child: RadioListTile(
              //         value: 3,
              //         groupValue: _value,
              //         onChanged: (val) {
              //           setState(() {
              //             _value = val!;
              //           });
              //         },
              //         title: Text("ROUND TRIP",style: TextStyle(fontSize: 12),),
              //         subtitle: Text("OUTSTATION",style: TextStyle(fontSize: 10),),
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  rowRound(value:1, way:"round trip",subway: "OUTSTATION"),
                  rowRound(value:2, way:"square trip",subway: "OUTSTATION"),
                  rowRound(value:3, way:"tri trip",subway: "HOURLY BASIS"),
                ],
              ),
              Text(
                "From AIrport",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              GestureDetector(
                child: Text(
                  'Delhi',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Divider(
                height: 60,
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
                height: 60,
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
                height: 60,
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
        ));
  }
}
