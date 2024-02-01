import 'package:flutter/material.dart';
import 'package:sample_project/screens/SplashScreen.dart';
import 'package:sample_project/screens/IntroScreen.dart';
import 'package:sample_project/screens/HomeScreen.dart';
import 'package:sample_project/screens/AddScreen.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      initialRoute: "splash",
      debugShowCheckedModeBanner: false,
      routes: {
          "splash": (context) => const SplashScreen(),
          "intro" : (context) => const IntroScreen(),
          "home": (context) => const HomeScreen(),
          "add": (context) => const AddScreen(),
      },
    );
  }
}