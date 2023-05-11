import 'package:flutter/material.dart';

class ecash extends StatelessWidget {
  const ecash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("eCash",
          style: TextStyle(
              color: Colors.black
          ) ,),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('Layer.png'),fit: BoxFit.cover)
              ),
            ),
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
                      Icon(Icons.card_giftcard,color: Colors.red,size: 50,),
                      SizedBox(width: 10.0,),
                      Text('Use your ecash and get additional discount',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        color: Colors.grey[600]
                      ),)
                    ],
                  ),
                  SizedBox(height: 23,),
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet,color: Colors.red,size: 50,),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Text('Use your ecash to purchase shopping coupons',style: TextStyle(
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