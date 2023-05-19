import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yatri_clone/Authentications/LoginScrren.dart';
import 'package:yatri_clone/Authentications/auth_page.dart';
import 'package:yatri_clone/navpage/HomePage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if (snapshot.hasData){
            return homePage();
          }else{
            return AuthPage();
          }
        }
      ),
    );
  }
}
