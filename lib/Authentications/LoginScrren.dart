import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  //email/Password controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("yatra",
          style: TextStyle(
              color: Colors.red,
              fontSize: 30.0
          ) ,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18.0,),
            const Text('Welcome to Yatra!',style: TextStyle(
              fontSize: 20.0,
            ),
            ),
            const SizedBox(height: 10.0,),
            const Text('Please Login/Sign Up using your Email/Mobile to continue',style: TextStyle(
              fontSize: 11.0
            ),),
            SizedBox(height: 15.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                width: 400,
                height: 400,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  children: [
                    Container(
                      width : 150,
                        height: 150,
                        child: Image.asset('assets/images/profile.png')
                    ),
                    Text('Email ID/Mobile Number'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: TextField(
                       // controller: _passwordcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[500],
                          padding: EdgeInsets.symmetric(horizontal: 120,vertical: 15)),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 7),
                      child: Text('By proceeding you are agree with our Terms of Service,Privacy Policy & User Agreement',style: TextStyle(
                        fontSize: 12
                      ),),
                    )
                  ],
                )
              ),
            ),

          ],
        ),
      ),
    );
  }
}