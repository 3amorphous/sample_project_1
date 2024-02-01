import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.orange],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
        )
      ),
        
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "Insert title here", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
            ),
          ),
            body: 
              "This is the first page.",
            image: Image.asset(
              "images/images_1.jpg", 
              height: 400, 
              width: 400,
              ),
            ),
            PageViewModel(
            titleWidget: const Text(
              "Insert title here", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
            ),
          ),
            body: 
              "This is the second page.",
            image: Image.asset(
              "images/images_2.jpg", 
              height: 400, 
              width: 400,
              ),
            ),
            PageViewModel(
            titleWidget: const Text(
              "Insert title here", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
            ),
          ),
            body: 
              "This is the third page.",
            image: Image.asset(
              "images/images_3.jpg", 
              height: 400, 
              width: 400,
              ),
            ),
          ],
            onDone: (){
              Navigator.pushNamed(context, "home");
            },
            onSkip: (){
              Navigator.pushNamed(context, "home");
            },
            showSkipButton: true,
              skip: const Text(
                "Skip", 
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            next: const Icon(
                Icons.arrow_forward, 
                color: Colors.black
          ),
            done: const Text(
                "Done", 
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.black26,
              activeColor: Colors.black,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
              ),
            ),
      ),
    ),
    );
  }
}