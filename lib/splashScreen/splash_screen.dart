import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hire_lawyer/onBoarding/on_boarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key); // constructor

  @override
  _SplashScrenState createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => Get.to(() => OnBoardingBody())); // to is a destination
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // resolution de l'écran
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.1, horizontal: size.width * 0.1),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/logo.png'),
                  ),
                  Text(
                    "Hire Lawyer",
                    style: TextStyle(fontSize: 40, fontFamily: "Teko-Medium"),
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
