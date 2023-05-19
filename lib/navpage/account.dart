import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class account extends StatefulWidget {
  //final VoidCallback goLogin;
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Account",
            style: TextStyle(
                color: Colors.black
            ) ,
          ),
        ),
        body: SafeArea(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(right: 270.0),
                child: Text("Benefits",style: TextStyle(fontWeight: FontWeight.bold),),
                ),

                SizedBox(height: 13.0,),
                Padding(padding: const EdgeInsets.only(left: 15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Icon(Icons.check_circle,color: Colors.green[300],),
                    Text('  Unlock E-Cash'),
                    SizedBox(width: 32.0,),
                    Icon(Icons.check_circle,color: Colors.green[300],),
                    Text('  Manage your booking'),
                    SizedBox(width: 32.0,),
                    Icon(Icons.check_circle,color: Colors.green[300],),
                    Text('  Faster Checkout'),
                  ]
                  ),
                )
                ),
                SizedBox(height: 50),
                // StreamBuilder<User?>(
                //     stream: FirebaseAuth.instance.authStateChanges(),
                //     builder: (context,snapshot){
                //       if (snapshot.hasData){
                //         setState(() {
                //           isVisible = !isVisible;
                //         });
                //         print(isVisible);
                //       }
                //     }
                // ),
                Visibility(
                  visible: false,
                  child: ElevatedButton(
                     onPressed: (){}, //widget.goLogin,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[500],
                        padding: EdgeInsets.fromLTRB(110, 15, 110, 15)),
                    child: const Text(
                      'LOGIN/SIGN UP',
                      style: TextStyle(
                          fontSize: 15,
                          ),
                    ),
                  ),
                ),

                // Visibility(
                //   visible: !isVisible,
                //   child: Column(
                //     children: [
                //       Container(
                //         width: double.infinity,
                //         decoration: BoxDecoration(
                //             image: DecorationImage(image: AssetImage('Layer.png'),fit: BoxFit.cover)
                //         ),
                //       ),
                //       Text("hi, "+user.email!)
                //     ],
                //   ),
                // ),

                //Bottom Icons & text
                Padding(padding: const EdgeInsets.only(left: 15.0,top: 50),
                     child: Column(
                      children: [
                        Row(
                            children: [
                          Icon(Icons.settings,color: Colors.grey[700],),
                              GestureDetector(
                                onTap: (){},
                                child: const Text(
                                  '  My Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                        ]
                        ),
                        SizedBox(height: 20.0 ,),
                        Row(
                            children: [
                              Icon(Icons.share,color: Colors.grey[700],),
                              GestureDetector(
                                onTap: (){},
                                child: const Text(
                                  '  Share the App',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ]
                        ),
                        SizedBox(height: 20.0 ,),
                        Row(
                            children: [
                              Icon(Icons.star,color: Colors.grey[700],),
                              GestureDetector(
                                onTap: (){},
                                child: const Text(
                                  '  Rate Us',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ]
                        ),
                        SizedBox(height: 20.0 ,),
                        Row(
                            children: [
                              Icon(Icons.ac_unit_outlined,color: Colors.grey[700],),
                              GestureDetector(
                                onTap: (){},
                                child: const Text(
                                  '  About Yatra',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ]
                        ),
                        SizedBox(height: 20.0 ,),
                        Row(
                            children: [
                              Icon(Icons.handshake,color: Colors.grey[700],),
                              GestureDetector(
                                onTap: (){},
                                child: const Text(
                                  '  Invertors Relation',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ]
                        ),
                      ],
                    )
                ),


                ElevatedButton(
                  onPressed: (){FirebaseAuth.instance.signOut();},
                    child: Text("Sign Out"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[500],
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10)),
                )


              ],
            ),

        ),
      ),
    );
  }
}