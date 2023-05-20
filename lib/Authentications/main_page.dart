import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yatri_clone/Authentications/auth_page.dart';
import 'package:yatri_clone/Authentications/emailVerification.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if (snapshot.hasData){
            return VerifyEmail();
          }else{
            return AuthPage();
          }
        }
      ),
    );
  }
}
