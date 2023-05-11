import 'package:flutter/material.dart';

class booking extends StatelessWidget {
  const booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Bookings",
            style: TextStyle(
                color: Colors.black
            ) ,),
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.0,),
            Container(
                width : 150,
                height: 150,
                child: Image.asset('assets/images/profile.png')
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.list_alt_outlined,color: Colors.red,size: 50,),
                      SizedBox(width: 10.0,),
                      Text('View detail itinerary of your trip.',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey[600]
                      ),)
                    ],
                  ),
                  SizedBox(height: 23,),
                  Row(
                    children: [
                      Icon(Icons.send_rounded,color: Colors.red,size: 50,),
                      SizedBox(width: 10.0,),
                      Text('Send SMS/Email of your ticket/voucher',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey[600]
                      ),)
                    ],
                  ),

                  SizedBox(height: 23,),
                  Row(
                    children: [
                      Icon(Icons.cancel_presentation_outlined,color: Colors.red,size: 50,),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Text('Cancel your trip and check concellation charge for the same',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.grey[600]
                        ),),
                      )
                    ],
                  ),

                  SizedBox(height: 25.0,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[500],
                        padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
                    child: const Text(
                      'LOGIN/REGISTER',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
