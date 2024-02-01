import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample_project/screens/IntroScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin{

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
 
  Future.delayed(const Duration(seconds: 3), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder:(_) => const IntroScreen(),
          )
        );
      }
    );
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.orange],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
            )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/welcome_cat.png"), 
              height: 400, 
              width: 400,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSpinningLines(
              color: Colors.white,
              size: 50.0,
            )
          ]
        )
      )
    );
  }
}