import 'package:flutter/material.dart';

class rentals extends StatefulWidget {
  const rentals({Key? key}) : super(key: key);

  @override
  State<rentals> createState() => _rentalsState();
}

class _rentalsState extends State<rentals> {
  int selectedValue = 0;
  DateTime _dateTime4 = DateTime.now();
  DateTime _dateTime5 = DateTime.now();

  void _showDatePicker4() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime4 = value!;
      });
    });
  }

  void _showDatePicker5() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime5 = value!;
      });
    });
  }

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  TimeOfDay _timeOfDay2 = TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void _showTimePicker2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: Column(
        children: [
          // Row(
          //   children: [
          //     Transform.scale(
          //       scale: 1,
          //       child: RadioListTile(
          //           value: 1,
          //           groupValue: selectedValue,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedValue = 1;
          //             });
          //           }),
          //     ),
          //   ],
          // ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Delhi",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(Icons.compare_arrows_sharp),
              SizedBox(
                width: 97,
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "To",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Mumbai",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 50,
            thickness: 1,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: _showDatePicker4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pickup Date",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${_dateTime4.day}/${_dateTime4.month}/${_dateTime4.year}",
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
                onTap: _showTimePicker,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Pickup Time",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _timeOfDay.format(context).toString(),
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
          Row(
            children: [
              GestureDetector(
                onTap: _showDatePicker5,
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
                      "${_dateTime5.day}/${_dateTime5.month}/${_dateTime5.year}",
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
                onTap: _showTimePicker2,
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
                      _timeOfDay2.format(context).toString(),
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
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[500],
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15)),
            child: const Text(
              'SEARCH CABS',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
