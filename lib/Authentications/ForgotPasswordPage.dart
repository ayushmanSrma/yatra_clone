import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset(BuildContext context) async {
    //You have to pass BuildContext to passwordReset
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            //DialogBox for succesful reset link
            content: Text(
              "Password reset link has sent.\nClick on the link to reset and login again.",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'AppleFont',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            alignment: Alignment.center,
          ));
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            content: Text(
              e.message.toString(),
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'AppleFont',
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Back IconButton
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 30, 0, 0),
            child: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: const Icon(Icons.exit_to_app_rounded),
              iconSize: 33.0,
              highlightColor: Colors.blue,
              splashRadius: 30,
            ),
          ),

          //Enter email text
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
            child: Text(
              'Enter the email to receive reset password link',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'AppleFont',
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/profile.png')),

          //email TextField
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Container(
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),

          //Reset Button
          ElevatedButton(
            onPressed: () => passwordReset(context), // ADD THIS
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[500],
                padding: EdgeInsets.symmetric(
                    horizontal: 120, vertical: 15)),
            child: const Text(
              'Continue',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}