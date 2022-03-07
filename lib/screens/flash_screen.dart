// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_handbook/screens/welcome_screen.dart';

class Flashscreen extends StatefulWidget {
  const Flashscreen({Key? key}) : super(key: key);

  @override
  State<Flashscreen> createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {
  @override
  void initState() {
    super.initState();
    _navigateTowelcome();
  }

  _navigateTowelcome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WelcomeScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/CMDI-LOGO-1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
