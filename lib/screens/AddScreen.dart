import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget{
  const AddScreen({super.key});
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
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Title here",
            ),
          ),
      body: Column(
        children: <Widget>[
         Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Name of pet",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,
                  )
                )
              ),
              )
            ),
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Gender",
                labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,
                  )
                )
              ),
              )
            ),
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Breed",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                    ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,
                  )
                )
              ),
              )
            ),
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Birthday",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                    ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,
                  )
                )
              ),
              )
            ),
        ]
          ),
        ),
      );
  }
}