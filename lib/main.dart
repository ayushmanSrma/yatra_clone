import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yatri_clone/Authentications/LoginScrren.dart';
import 'package:yatri_clone/Authentications/main_page.dart';
import 'package:yatri_clone/Authentications/signUp.dart';
import 'package:yatri_clone/navpage/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
