import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  final VoidCallback showLoginPage;
  signUp({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  //email/Password controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
  //create the user
  Future registerUp() async {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim());
      } on FirebaseAuthException catch(e){
        debugPrint(e.toString());
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              content: Text(e.message.toString(),
                textAlign: TextAlign.center,
              ),
            ));
      }


    //add user details
    addUserDetails(
        _firstNameController.text.trim(),
        _lastNameController.text.trim(),
        _emailController.text.trim(),
         int.parse(_phoneController.text.trim()),
    );
  }

  Future addUserDetails(String firstName,String lastName,String email,int phone) async{
    await FirebaseFirestore.instance.collection("user").add({
      'first name' : firstName,
      'last name' : lastName,
      'phone' : phone,
      'email' : email,
    }); //store the information in "user" collection
  }

  int val = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "yatra",
            style: TextStyle(color: Colors.red, fontSize: 30.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome to Yatra!',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Thanks, we need a few more details to create your account'),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10, 295, 0),
                        child: Text('EMAIL ID'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),

                      //Mobile Number Input
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10, 245, 0),
                        child: Text('MOBILE NUMBER'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: TextField(
                           controller: _phoneController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),

                      //Create Password
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10, 225, 0),
                        child: Text('CREATE PASSWORD'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 10.0),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          obscureText: true,
                        ),
                      ),

                      //FULL NAME
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10, 285, 0),
                        child: Text('FULL NAME'),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value!;
                                });
                              }),
                          Text('Mr'),
                          SizedBox(
                            width: 85,
                          ),
                          Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value!;
                                });
                              }),
                          Text('Ms'),
                          SizedBox(
                            width: 78,
                          ),
                          Radio(
                              value: 3,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value!;
                                });
                              }),
                          Text('Mrs'),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 10, bottom: 10.0),
                              child: TextField(
                                 controller: _firstNameController,
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 16.0, bottom: 10.0),
                              child: TextField(
                                 controller: _lastNameController,
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85),
                        child: Row(
                          children: [
                            Text("Have a Referal Code? "),
                            Text(
                              "Click Here",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: registerUp,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[500],
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15)),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90),
                        child: Row(
                          children: [
                            Text("Already Registered?"),
                            GestureDetector(
                              onTap: widget.showLoginPage,
                                child: Text(
                              "Login Now",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(children: [
                          Text(
                              "By proceeding you agree with our Terms of Service,"),
                          Text("Privacy Policy & User Agreement "),
                        ]),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
