import 'package:flutter/material.dart';
import 'package:yatri_clone/Authentications/LoginScrren.dart';
import 'package:yatri_clone/Authentications/signUp.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return loginScreen(showRegisterPage: toggleScreens);
    }else{
      return signUp(showLoginPage: toggleScreens);
    }
  }
}
