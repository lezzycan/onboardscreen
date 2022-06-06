import 'dart:ui';

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Onboarding Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "WELCOME TO MY ONBOARDING SCREEN",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
