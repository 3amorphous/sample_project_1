import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
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
      body: const Center(
        child: Text(
          "Empty state \ngraphic here", 
          style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, "add");
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add
          ),
      ),
      bottomNavigationBar: const SizedBox(height: 45.0),
      )
    );
  }
}