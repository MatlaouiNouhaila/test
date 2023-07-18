import 'package:flutter/material.dart';

import 'Singin.dart';
import 'login.dart';

class Script extends StatelessWidget {
  const Script({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 50, right: 50),
        margin: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
Image.asset(
              "images/persson2.jpg",
              width: 900,
              height: 300,
            )            ,
            const Text(
              "Hello !",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.8,
                  color: Color.fromARGB(255, 130, 9, 134),),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                "We are delighted to invite you to our upcoming presentation on SHOWUP."),
            const SizedBox(
              height: 70,
            ),
            //button1:::::::::::::::::::::
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 221, 162, 245),
                  Color.fromARGB(218, 64, 40, 104)
                ], // Specify the colors for the gradient
                begin: Alignment
                    .topCenter, // Define the starting point of the gradient
                end: Alignment
                    .bottomCenter, // Define the ending point of the gradient
              )),
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogIn()));
                },
                child: const Text(
                  ' LOGIN ',
                  style: TextStyle(letterSpacing: 2.8, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //button 2::::::::::::::::::::::::::
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                  // Add your button's functionality here
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sing_In ()));
                },
                child: const Text(
                  ' SIGNUP ',
                  style: TextStyle(letterSpacing: 2.8, color: Colors.black26),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
