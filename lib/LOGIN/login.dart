// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:test_application/LOGIN/page1.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Script()));
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            const Text("welcome!",
                style: TextStyle(
                    color: Color.fromARGB(255, 130, 9, 134),
                    letterSpacing: 7,
                    fontSize: 29,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 13,
            ),
            const Text("Sign in to continue!",
                style: TextStyle(
                    color: Colors.black26, fontSize: 16, letterSpacing: 3)),
            const Padding(padding: EdgeInsets.only(top: 70)),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter your gmail',
              ),
              onChanged: (value) {
                // Handle the changes in the text field
                print('Text field value: $value');
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter your password',
              ),
              onChanged: (value) {
                // Handle the changes in the text field
                print('Text field value: $value');
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
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
              child: TextButton(
                onPressed: () {
                  // Add your button's functionality here
                  print('Button pressed');
                },
                child: const Text(
                  ' LOGIN ',
                  style: TextStyle(letterSpacing: 2.8, color: Colors.white),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Text(
              "forget passwors ?",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top:30 )),
            // ignore: prefer_const_literals_to_create_immutables
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'or',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            const Text(
              " Socila Media Login",
              style: TextStyle(color: Color.fromARGB(255, 221, 162, 245),),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/google.jpg",
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                    width: 10), // Add some spacing between the images
                Image.asset(
                  "images/facboc.jpg",
                  width: 50,
                  height: 30,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  "images/apple.jpg",
                  width: 50,
                  height: 30,
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Text(
              "Some help ?",
              style: TextStyle(color: Color.fromARGB(218, 64, 40, 104)),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
