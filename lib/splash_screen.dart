import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_navigation_app/home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   // Add code for your splash screen here
  //   // You can use a Timer to navigate to the next screen after a delay
  //   // Example: Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())));
  //   Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())));
  //   return Scaffold(

  //     body: Center(

  //       child: CircularProgressIndicator(),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 229, 172, 118),
                Color.fromARGB(255, 173, 100, 100),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Column(
                children: [
                  // Image.asset(
                  //   "assets/images/logo2.png",
                  //   height: MediaQuery.of(context).size.width * 0.2,
                  //   width: MediaQuery.of(context).size.width * 0.2,
                  // ),
                  Text('IndoWayFinder',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
