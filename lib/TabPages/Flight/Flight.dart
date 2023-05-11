import 'package:flutter/material.dart';

import 'depart.dart';

enum ClassTypeEnum {Economy,PremiumEco,Business}

class flight extends StatefulWidget {
  flight({Key? key}) : super(key: key);

  @override
  State<flight> createState() => _flightState();
}

class _flightState extends State<flight> {
  bool isSelected = false;
  int id = 0;
  Map<String,bool> ckbx = {"non-stop":false,"student":false,"military":false,"old":false};
  ClassTypeEnum? _classTypeEnum;
  final allChecked = CheckBoxModal(title: 'All Check');
  final checkBoxList =[
    CheckBoxModal(title: 'Non Stop Flights'),
    CheckBoxModal(title: 'Armed Forces'),
    CheckBoxModal(title: 'Student Fare'),
    CheckBoxModal(title: 'Senior Citizen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            //Flight Buttons
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                OutlinedButton(
                  onPressed: () => setState(() {
                    isSelected = !isSelected;
                    id = 1;
                  }),
                  child: Text(
                    'ONE WAY',
                    style: TextStyle(
                      color: isSelected && id == 1 ? Colors.red : Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.fromLTRB(22, 5, 20, 5),
                      side: BorderSide(
                        width: 1,
                        color: isSelected && id == 1 ? Colors.red : Colors.grey,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => setState(() {
                    isSelected = !isSelected;
                    id = 2;
                  }),
                  child: Text(
                    'ROUND TRIP',
                    style: TextStyle(
                      color: isSelected && id == 2 ? Colors.red : Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      side: BorderSide(
                        width: 1,
                        color: isSelected && id == 2 ? Colors.red : Colors.grey,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => setState(() {
                    isSelected = !isSelected;
                    id = 3;
                  }),
                  child: Text(
                    'MUTI-CITY',
                    style: TextStyle(
                      color: isSelected && id == 3 ? Colors.red : Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      side: BorderSide(
                        width: 1,
                        color: isSelected && id == 3 ? Colors.red : Colors.grey,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => setState(() {
                    isSelected = !isSelected;
                    id = 4;
                  }),
                  child: Row(
                    children: [
                      Icon(
                        Icons.transcribe,
                        size: 12,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'DISCOVER',
                        style: TextStyle(
                          color: isSelected && id == 4 ? Colors.red : Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                      side: BorderSide(
                        width: 1,
                        color: isSelected && id == 4 ? Colors.red : Colors.grey,
                      )),
                ),
              ],
            ),
            //Depart From
            SizedBox(height: 10.0,),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //    SizedBox(width: 10,),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Depart from',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          'New Delhi',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'DEL',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 103,),
                Icon(Icons.compare_arrows_rounded),
                SizedBox(width: 102,),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Depart from',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          'New Delhi',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'DEL',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Departure date
            //SizedBox(height: 40,),
            Divider(
              height: 40,
              thickness: 1,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Depart Date',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "03 May'23",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'WEDNESDAY',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 225,),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Return Date',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          'Book Round Trip',
                          style: TextStyle(fontSize: 10.0, color: Colors.blue),
                        ),
                        Text(
                          'to save extra',
                          style: TextStyle(fontSize: 10.0, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 40,
              thickness: 1,
            ),

            //Travelling Class
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Travellor(s), Class',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '  1',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Travellor, ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Economy",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("  Adult "),
                                  Text("(Above 12 Years)",style: TextStyle(fontSize: 12,color: Colors.grey),)
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                children: [
                                  Text("  Child "),
                                  Text("(2-12 Year))",style: TextStyle(fontSize: 12,color: Colors.grey),)
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                children: [
                                  Text("  Infant "),
                                  Text("(Below 2 years)",style: TextStyle(fontSize: 12,color: Colors.grey),)

                                ],
                              ),
                              SizedBox(height: 30,),
                              RadioListTile<ClassTypeEnum>(value: ClassTypeEnum.Economy, groupValue: _classTypeEnum, onChanged: (val){
                                print(val);
                                setState(() {
                                  _classTypeEnum=val!;
                                });
                              },
                              title: Text(ClassTypeEnum.Economy.name),
                          contentPadding: EdgeInsets.all(0),),
                              RadioListTile<ClassTypeEnum>(value: ClassTypeEnum.PremiumEco, groupValue: _classTypeEnum, onChanged: (val){
                                print(val);
                                setState(() {
                                  _classTypeEnum=val!;
                                });
                              },
                                title: Text(ClassTypeEnum.PremiumEco.name),
                          contentPadding: EdgeInsets.all(0),),
                              RadioListTile<ClassTypeEnum>(
                                value: ClassTypeEnum.Business,
                                groupValue: _classTypeEnum,
                                onChanged: (val){
                                print(val);
                                setState(() {
                                  _classTypeEnum=val!;
                                });
                              },
                                title: Text(ClassTypeEnum.Business.name),
                              contentPadding: EdgeInsets.all(0),),
                              SizedBox(height: 10,),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red[500],
                                    padding: EdgeInsets.symmetric(horizontal: 180,vertical: 15)),
                                child: const Text(
                                  'Done',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Travellors, Class',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              "1 Travellor, Economy",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 225,
                        ),
                        Icon(Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            //CheckBox
            // ListView(
            //   shrinkWrap: true,
            //   children: <Widget>[
            //     Divider(),
            //     ...checkBoxList.map((item)=>
            //         ListTile(
            //           onTap:()=>onAllClicked(item),
            //           leading: SizedBox(
            //             width: 200,
            //             child: CheckboxListTile(value: item.value, onChanged:(value)=>onAllClicked(item),
            //               title: Text(item.title,style: TextStyle(
            //                   fontSize: 15,
            //                   color: Colors.grey
            //               ),),),
            //           ),
            //         )
            //     ).toList(),
            //   ],
            // ),
            //check box here
            Row(
              children: [
                Column(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.4,
                    child: CheckboxListTile(
                      title: Text("b"),dense: false,
                        value: ckbx["non-stop"],
                        onChanged: (val){ setState(() {
                      ckbx["non-stop"]= val!;
                    });}),
                  ),
                  Checkbox(value: ckbx["student"], onChanged: (val){ setState(() {
                    ckbx["student"]= val!;
                  });})
                ],),
                Column(children: [
                  Checkbox(value: ckbx["military"], onChanged: (val){ setState(() {
                    ckbx["military"]= val!;
                  });}),
                  Checkbox(value: ckbx["old"], onChanged: (val){ setState(() {
                    ckbx["old"]= val!;
                  });})
                ],)
              ],
            ),
            //Search Flight Button
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                  padding: EdgeInsets.symmetric(horizontal: 130,vertical: 15)),
              child: const Text(
                'Search Flights',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  onAllClicked(CheckBoxModal ckbItem){
    setState(() {
      allChecked.value = !allChecked.value;
    });
  }
}



class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title,this.value = false});
}